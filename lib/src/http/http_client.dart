import 'package:flutter/foundation.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MLMApiHttpClient {
  MLMApiHttpClient._();

  static Duration timeoutDuration = const Duration(seconds: 10);

  /// Default app headers. New [Map] object instance is created at every call,
  /// ensuring the Authorization header had been set with latest data.
  static Map<String, String> get _headers => {
        'Content-Type': 'application/json; charset=utf-8',
        'Accept': 'application/json; charset=utf-8',
        'papp': MLMApi.pApp,
        'pauth': MLMApi.pAuth
      };

  /// Intialises the actual HTTP request, forwards the data to the network
  /// inspector in debug / profile builds, and returns the response in either
  /// a decoded or an encoded format.
  static Future _httpRequest(
    Future<http.Response> Function() request,
    String endpoint,
    bool decoded,
    bool logs,
  ) async {
    _() async {
      try {
        final response = await request();
        return response;
      } catch (e, _) {
        debugPrint('$e');
        throw 'NETWORK ERROR\n$endpoint\n$e';
      }
    }

    final response = await _();

    if (decoded) {
      return await _getDecodedResponse(response, _);
    }

    return response;
  }

  /// Checks the response status codes for potential errors, acts on them if
  /// any are found, and returns a decoded response object if none are found.
  static dynamic _getDecodedResponse(
    http.Response response,
    Function repeat, [
    bool repeated = false,
  ]) async {
    /// If no errors had been caught by the below switch statement, does a final
    /// check and returns a decoded response object if everything seems fine.
    dynamic onEnd(http.Response response) {
      final decoded = jsonDecode(response.body);
      if (response.statusCode ~/ 2 != 100) {
        debugPrint(response.statusCode.toString());
        throw 'Check status code.';
      } else {
        try {
          // jsonDecode method will create a List<dynamic> type object if the response body is empty []
          // and decoded.containsKey will throw an error 'noSuchMethod' because of that
          if (decoded is List) return decoded;

          final contains = decoded.containsKey('error');
          if (contains && decoded['error'] == true) throw 406;
          return decoded;
        } catch (e, _) {
          if (e == 406) throw decoded['message'];
          return decoded;
        }
      }
    }

    switch (response.statusCode) {
      // Redirections
      case 301:
      case 307:
      case 308:
        return jsonDecode(response.body);
      // Forbidden or error
      case 400:
      // return jsonDecode(response.body);
      case 403:
      case 500:
      case 502:
      case 503:
      // Failed authentication
      case 401:
      // Resource missing
      case 404:
      case 405:
      case 409:
        return jsonDecode(response.body);
      default:
        return onEnd(response);
    }
  }

  static Future get(
    String address, {
    String? path,
    Map<String, String>? headers,
    String? key,
    bool decoded = true,
    bool logs = true,
  }) async =>
      await _httpRequest(
        () async => await http
            .get(
              Uri.parse(path != null ? 'https://$address/$path' : address),
              headers: key != null
                  ? (Map.from(headers ?? _headers)..['apiKey'] = key)
                  : headers ?? _headers,
            )
            .timeout(timeoutDuration),
        path ?? address,
        decoded,
        logs,
      );

  static Future post(
    String address,
    String? path,
    dynamic body, {
    Map<String, String>? headers,
    bool decoded = true,
    bool encodedBody = true,
    bool logs = true,
  }) async =>
      await _httpRequest(
        () async => await http
            .post(
              Uri.parse(path == null ? address : 'https://$address/$path'),
              body: body.runtimeType == String
                  ? body
                  : encodedBody
                      ? jsonEncode(body)
                      : body,
              headers: headers ?? _headers,
            )
            .timeout(timeoutDuration),
        path ?? address,
        decoded,
        logs,
      );

  static Future put(
    String address,
    String? path,
    dynamic body, {
    Map<String, String>? headers,
    bool decoded = true,
    bool encodedBody = true,
    bool logs = true,
    String? key,
  }) async =>
      await _httpRequest(
        () async => await http
            .put(
              Uri.parse(path == null ? address : 'https://$address/$path'),
              body: body.runtimeType == String
                  ? body
                  : encodedBody
                      ? jsonEncode(body)
                      : body,
              headers: key != null
                  ? (Map.from(headers ?? _headers)..['apiKey'] = key)
                  : headers ?? _headers,
            )
            .timeout(timeoutDuration),
        path ?? address,
        decoded,
        logs,
      );

  static Future delete(
    String address,
    String? path, {
    dynamic body,
    Map<String, String>? headers,
    String? key,
    bool decoded = true,
    bool logs = true,
  }) async =>
      await _httpRequest(
        () async => await http
            .delete(
              Uri.parse('https://$address/$path'),
              body: body.runtimeType == String ? body : jsonEncode(body),
              headers: key != null
                  ? (Map.from(headers ?? _headers)..['apiKey'] = key)
                  : headers ?? _headers,
            )
            .timeout(timeoutDuration),
        path ?? address,
        decoded,
        logs,
      );
}
