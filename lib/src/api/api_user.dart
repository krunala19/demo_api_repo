import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api_package.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_client.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_endpoints.dart';

class MLMApiUser {
  MLMApiUser._();

  /// Get user
  ///
  static Future<MLMApiModelUser> getUser(String userId) async {
    return MLMApiModelUser.fromJson(
      await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: '${MLMEndpoints.getUser.path}/$userId',
      ),
    );
  }

  /// Check user
  ///
  static Future<MLMApiModelUser> checkUser(
      MLMApiModelCheckUserRequest checkUserRequest) async {
    return MLMApiModelUser.fromJson(
      (await MLMApiHttpClient.post(
        MLMApi.baseUrl,
        MLMEndpoints.checkUser.path,
        checkUserRequest.toJson(),
      ))['data'],
    );
  }

  /// Delete user
  ///
  static Future<dynamic> deleteUser(String userId) async {
    return await MLMApiHttpClient.delete(
      MLMApi.baseUrl,
      '${MLMEndpoints.deleteUser.path}/$userId',
    );
  }

  /// Update user
  ///
  static Future<dynamic> updateUser(MLMApiModelUser user) async {
    return await MLMApiHttpClient.put(
      MLMApi.baseUrl,
      MLMEndpoints.updateUser.path,
      user.toJson(),
    );
  }

  /// Logout user
  ///
  static Future<dynamic> logoutUser({
    required String pan,
    required String token,
  }) async {
    return await MLMApiHttpClient.get(
      MLMApi.baseUrl,
      path: MLMEndpoints.logoutUser.path,
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Accept': 'application/json; charset=utf-8',
        'papp': MLMApi.pApp,
        'pauth': MLMApi.pAuth,
        'pan': pan,
        'token': token,
      },
    );
  }
}
