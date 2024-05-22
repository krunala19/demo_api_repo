import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api_package.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_client.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_endpoints.dart';
import 'package:modus_loyalty_mobile_api/src/models/polls/model_polls_request.dart';

class MLMApiCommon {
  MLMApiCommon._();

  static Future<List<MLMApiModelAppMessage>> getAppBanners() async {
    return List<MLMApiModelAppMessage>.from(
      (await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: MLMEndpoints.banners.path,
      ))
          .map((appMessageJson) =>
              MLMApiModelAppMessage.fromJson(appMessageJson)),
    );
  }

  static Future<MLMApiModelCouponResponse> getCoupons(
      {required String pan}) async {
    return MLMApiModelCouponResponse.fromJson(
      await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: '${MLMEndpoints.coupons.path}?pan=$pan',
      ),
    );
  }

  static Future<MLMApiModelActionsResponse> getActions(
      {required String pan}) async {
    return MLMApiModelActionsResponse.fromJson(
      await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: '${MLMEndpoints.getActions.path}/$pan',
      ),
    );
  }

  static Future<MLMApiModelInvoices> getTransaction(
      {required String pan}) async {
    return MLMApiModelInvoices.fromJson(
      await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: '${MLMEndpoints.transactions.path}/$pan',
      ),
    );
  }

  static Future<List<MLMApiModelShop>> getShops() async {
    return List<MLMApiModelShop>.from(
      (await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: MLMEndpoints.getShops.path,
      ))
          .map((shopJson) => MLMApiModelShop.fromJson(shopJson)),
    );
  }

  static Future<List<MLMApiModelPartner>> getPartners() async {
    return List<MLMApiModelPartner>.from(
      (await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: MLMEndpoints.getAllPartners.path,
      ))
          .map((shopJson) => MLMApiModelPartner.fromJson(shopJson)),
    );
  }

  static Future<MLMApiModelPartner> getPartner({
    required String id,
  }) async {
    return MLMApiModelPartner.fromJson(await MLMApiHttpClient.get(
      MLMApi.baseUrl,
      path: '${MLMEndpoints.partner.path}/get/$id',
    ));
  }

  static Future<MLMApiModelAppVersion> getAppVersion() async {
    return MLMApiModelAppVersion.fromJson(await MLMApiHttpClient.get(
      MLMApi.baseUrl,
      path: MLMEndpoints.appVersion.path,
    ));
  }

  static Future<List<MLMApiModelPolls>> getAllPolls() async {
    return List<MLMApiModelPolls>.from(
      (await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: MLMEndpoints.getAllPolls.path,
      ))
          .map((shopJson) => MLMApiModelPolls.fromJson(shopJson)),
    );
  }

  static Future<dynamic> postPollResults(
      {required MLMApiModelPollsRequest pollsRequest}) async {
    return await MLMApiHttpClient.post(
      MLMApi.baseUrl,
      MLMEndpoints.postPollResults.path,
      pollsRequest,
    );
  }
}
