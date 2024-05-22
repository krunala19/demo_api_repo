import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api_package.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_client.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_endpoints.dart';

class MLMApiMessages {
  MLMApiMessages._();

  static Future<List<MLMApiModelMessageResponse>> getMessagesWithPan(
      String pan) async {
    return List<MLMApiModelMessageResponse>.from(
      (await MLMApiHttpClient.get(MLMApi.baseUrl,
              path: '${MLMEndpoints.getMessages.path}/$pan'))
          .map(
        (messageJson) => MLMApiModelMessageResponse.fromJson(messageJson),
      ),
    );
  }

  static Future<List<MLMApiModelAppMessage>> getAllAppMessages() async {
    return List<MLMApiModelAppMessage>.from(
      (await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: MLMEndpoints.getAllMessages.path,
      ))
          .map((appMessageJson) =>
              MLMApiModelAppMessage.fromJson(appMessageJson)),
    );
  }
}
