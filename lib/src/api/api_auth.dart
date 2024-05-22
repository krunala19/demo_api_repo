import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api_package.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_client.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_endpoints.dart';

class MLMApiAuth {
  MLMApiAuth._();

  /// Send the activation code
  ///
  static Future<dynamic> sendActivationCode(
      MLMApiModelSendActivationCodeRequest sendActivationCodeRequest) async {
    return await MLMApiHttpClient.post(
      MLMApi.baseUrl,
      MLMEndpoints.sendActivationCode.path,
      sendActivationCodeRequest.toJson(),
    );
  }

  /// Check the activation code
  ///
  static Future<dynamic> checkActivationCode(
      MLMApiModelCheckActivationCodeRequest checkActivationCodeRequest) async {
    return await MLMApiHttpClient.post(
      MLMApi.baseUrl,
      MLMEndpoints.checkActivationCode.path,
      checkActivationCodeRequest.toJson(),
    );
  }

  /// Create user
  ///
  static Future<MLMApiModelUser> createUser(
    MLMApiModelCreateUserRequest createUserRequest, {
    required String token,
    required String osName,
    required String osVer,
    required String appVer,
  }) async {
    return MLMApiModelUser.fromJson(
      await MLMApiHttpClient.post(
        MLMApi.baseUrl,
        '${MLMEndpoints.createUser.path}?token=$token&app_version=$appVer&os_ver=$osVer&os_name=$osName',
        createUserRequest.toJson(),
      ),
    );
  }

  static Future<MLMApiModelUser> createChildUser(
      MLMApiModelCreateChildUserRequest createChildUserRequest) async {
    return MLMApiModelUser.fromJson(
      await MLMApiHttpClient.post(
        MLMApi.baseUrl,
        MLMEndpoints.createChildUser.path,
        createChildUserRequest.toJson(),
      ),
    );
  }

  /// Forgot password
  ///
  static Future<dynamic> forgotPassword(
      MLMApiModelForgotPasswordRequest forgotPasswordRequest) async {
    return MLMApiHttpClient.post(
      MLMApi.baseUrl,
      MLMEndpoints.forgotPassword.path,
      forgotPasswordRequest.toJson(),
    );
  }

  /// Login user
  ///
  static Future<MLMApiModelUser> login(
    MLMApiModelLoginRequest loginRequest, {
    required String token,
    required String osName,
    required String osVer,
    required String appVer,
  }) async {
    return MLMApiModelUser.fromJson(
      await MLMApiHttpClient.post(
        MLMApi.baseUrl,
        '${MLMEndpoints.login.path}?token=$token&app_version=$appVer&os_ver=$osVer&os_name=$osName',
        loginRequest.toJson(),
      ),
    );
  }
}
