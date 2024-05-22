import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_client.dart';
import 'package:modus_loyalty_mobile_api/src/http/http_endpoints.dart';
import 'package:modus_loyalty_mobile_api/src/models/payment/model_subscription.dart';

class MLMApiPayment {
  MLMApiPayment._();

  static Future<MLModelApiSubscriptionsResponse> getSubscriptionStatus(
      String pan) async {
    return MLModelApiSubscriptionsResponse.fromJson(
      (await MLMApiHttpClient.get(
        MLMApi.baseUrl,
        path: '${MLMEndpoints.paymentSubscription.path}/$pan',
      )),
    );
  }
}
