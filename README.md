## Modus Loyalty Mobile API

Dart package project providing Modus Loyalty Mobile server API services to consumer clients.

## 1. General info

This project was designed as a central point for all of the Modus Loyalty Mobile server backend API bindings, implemented as a package in order to be shared between any number of different projects.

## 2. Code conventions

### 2.1 Class names
To differentiate between different internal Flutter projects and their respective elements, every public class name is prefixed with the MLMApi identifier.

Further separation and abstraction is achieved by prefixing logical app section identifiers to the class name, for example:

MLMApiModel
MLMApiHttpClient
...
Private class names should follow the same convention, with exceptions allowed wherever appropriate. For example, it'd be preferable to prefix every private model with the _Model identifier, but for other use cases that might not be relevant.

### 2.2 File names
File names are also prefixed with logical app section identifiers, mostly correlating to parent directory name.

This allows for consistency with the "Quick Open" and similar services.

Examples:

model_*.dart
util_*.dart
http_*.dart
...
Some exceptions can be made when it comes to file naming, whenever that achieves better code readability and consistency.

## 3. Testing

To prevent serialization errors, unit tests are defined in the test folder.

These unit tests are implemented in order to ensure the proper functioning of the fromJson and toJson methods.

The test are implemented with the flutter_test library, and can be ran with the flutter test command.

Example API endpoint test:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api_package.dart';
import 'package:modus_loyalty_mobile_api/ml_mobile_api.dart';
import 'package:modus_loyalty_mobile_api/src/api/api_auth.dart';
import 'package:modus_loyalty_mobile_api/src/api/api_common.dart';
import 'package:modus_loyalty_mobile_api/src/api/api_messages.dart';
import 'package:modus_loyalty_mobile_api/src/api/api_user.dart';
import 'package:modus_loyalty_mobile_api/src/models/auth/login/model_forgot_password_request.dart';
import 'package:modus_loyalty_mobile_api/src/models/auth/user/model_check_user_request.dart';

void main() async {
  const String app = 'eu.modusinfinitum.hop';
  const String auth = 'Paiu5eCuvZ3n7DI50M';

  const String email = 'example-email@gmail.com';
  const String deviceId = 'device-id';
  const String devicePn = 'device-pn';

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  /// For testing, first send activation code to the user email address
  ///
  test(
    'Send Activation Code Successfully',
    () async {
      await MLMobileApi.init(
        sharedPreferences: null,
        pAppSetValue: app,
        pAuthSetValue: auth,
      );
      final sendActivationCodeRequest = MLMobileModelSendActivationCodeRequest(
        email: email,
        oib: null,
        deviceId: deviceId,
        devicePn: devicePn,
      );
      final sendActivationCodeResponse =
          await MLMobileApiAuth.sendActivationCode(sendActivationCodeRequest);
      expect(sendActivationCodeResponse['statusCode'], equals(200));
    },
  );

  /// After activation code is received on the email, enter it here in [activationCode] and start the create user test proccess
  ///
  const String activationCode = '82588';
  group(
    'Start creating user \n',
    () {
      testWidgets(
          'Check activation code \n',
          (WidgetTester tester) async => tester.runAsync(() async {
                await MLMobileApi.init(
                  sharedPreferences: null,
                  pAppSetValue: app,
                  pAuthSetValue: auth,
                );
                final checkActivationCodeRequest =
                    MLMobileModelCheckActivationCodeRequest(
                  email: email,
                  activationCode: activationCode,
                );
                final checkActivationCodeResponse =
                    await MLMobileApiAuth.checkActivationCode(
                        checkActivationCodeRequest);
                expect(checkActivationCodeResponse['statusCode'], equals(200));
              }));
      testWidgets(
        'Create user successfull \n',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              sharedPreferences: null,
              pAppSetValue: app,
              pAuthSetValue: auth,
            );
            final createUserRequest = MLMobileModelCreateUserRequest(
              birthday: "2008-10-10",
              firstName: "TestFirstName",
              lastName: "TestLastName",
              sex: "M",
              email: email,
              address: "Kralja 3",
              notificationEmail: "notificationEmail",
              notificationMessage: "notificationMessage",
              notificationSms: "notificationSms",
              notificationPhone: "notificationPhone",
              notificationPost: "notificationPost",
              sendPlasticCard: "sendPlasticCard",
              deviceId: deviceId,
              devicePn: devicePn,
              os: "Android",
              osVer: "14.2",
              city: "Zagreb",
              zipCode: "100000",
              fixPhone: "0191019101",
              marketing: "1",
              activationCode: activationCode,
            );

            final createUserResponse =
                await MLMobileApiAuth.createUser(createUserRequest);

            final checkUserRequest = MLMobileModelCheckUserRequest(
              pan: createUserResponse.pan!,
              firstName: createUserResponse.firstName,
              lastName: createUserResponse.lastName,
              birthday: '2008-10-10',
            );
            final checkUserResponse =
                await MLMobileApiUser.checkUser(checkUserRequest);

            expect(createUserResponse.firstName,
                equals(createUserRequest.firstName));
          },
        ),
      );
    },
  );

  /// If the user forgot his pin and other information, with this it will recieve a new info on the email address
  ///
  test('Forget password', () async {
    await MLMobileApi.init(
      sharedPreferences: null,
      pAppSetValue: app,
      pAuthSetValue: auth,
    );
    final forgotPasswordRequest = MLMobileModelForgotPasswordRequest(
      email: email,
      deviceId: deviceId,
      devicePn: devicePn,
    );
    final forgotPasswordResponse =
        await MLMobileApiAuth.forgotPassword(forgotPasswordRequest);
    expect(forgotPasswordResponse['statusCode'], equals(200));
  });

  /// Login information
  const String pan = "60595511160000114";
  const int pin = 1468;
  const String userId = "c03b183d-9aba-dc73-dda1-67997a81ee00";

  /// Test login user
  /// Fetch user messages and coupons with user [pan]
  ///
  group(
    'Login user ->',
    () {
      testWidgets(
        'Login successful',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              sharedPreferences: null,
              pAppSetValue: app,
              pAuthSetValue: auth,
            );
            final loginRequest = MLMobileModelLoginRequest(
              deviceId: deviceId,
              devicePn: devicePn,
              pan: pan,
              pin: pin,
              firstName: 'TestFirstName',
              lastName: 'TestLastName',
              marketing: 1,
            );
            final loginResponse = await MLMobileApiAuth.login(loginRequest);
            expect(loginResponse.firstName, equals(loginRequest.firstName));
          },
        ),
      );

      testWidgets(
        'Get user successfull',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              sharedPreferences: null,
              pAppSetValue: app,
              pAuthSetValue: auth,
            );
            final getUserResponse = await MLMobileApiUser.getUser(userId);
            expect(getUserResponse.lastName, equals(getUserResponse.lastName));
          },
        ),
      );

      testWidgets(
        'Update user',
        (WidgetTester tester) async => await tester.runAsync(() async {
          await MLMobileApi.init(
            sharedPreferences: null,
            pAppSetValue: app,
            pAuthSetValue: auth,
          );
          final getUserResponse = await MLMobileApiUser.getUser(userId);
          getUserResponse.city = 'Samobo';
          getUserResponse.pin = pin;
          await MLMobileApiUser.updateUser(getUserResponse);
          final getUserResponseNew = await MLMobileApiUser.getUser(userId);
          expect(getUserResponseNew.city, equals(getUserResponse.city));
        }),
      );

      testWidgets(
        'Get all messages with pan',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiMessages.getMessagesWithPan(pan);
            print(response.map((e) => '${e.pushText}, ${e.text}'));
            expect(response.length, greaterThan(0));
          },
        ),
      );
      testWidgets(
        'Get all coupons with pan',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getCoupons(pan: pan);
            print(response.coupons!.map((e) => '${e.barcode}, ${e.text}'));
            expect(response.status, equals('OK'));
          },
        ),
      );

      testWidgets(
        'Get all actions with pan',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getActions(pan: pan);
            print(response.all!.map((e) => '${e.linkUrl}, ${e.name}'));
            expect(response.all?.length, greaterThan(0));
          },
        ),
      );

      testWidgets(
        'Get all user transactions with pan',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getTransaction(pan: pan);
            // print(response.invoices!.map((e) => '${e.linkUrl}, ${e.name}'));
            expect(response.invoices, greaterThanOrEqualTo(0));
          },
        ),
      );
    },
  );

  /// Remove user from the api
  ///
  test('Delete user', () async {
    await MLMobileApi.init(
      sharedPreferences: null,
      pAppSetValue: app,
      pAuthSetValue: auth,
    );

    final deleteUserResponse = await MLMobileApiUser.deleteUser(userId);
    expect(deleteUserResponse['statusCode'], equals(200));
  });

  /// Common tests
  ///
  group(
    'Common tests -> ',
    () {
      testWidgets(
        'Get app versions',
        (WidgetTester tester) => tester.runAsync(() async {
          await MLMobileApi.init(
            sharedPreferences: null,
            pAppSetValue: app,
            pAuthSetValue: auth,
          );

          final response = await MLMobileApiCommon.getAppVersion();
          print(
              'min api version ${response.minApiVersion}, ${response.minAppVersion}');
          expect(response.minApiVersion!.length, greaterThan(0));
        }),
      );
      testWidgets(
        'Get all app message',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiMessages.getAllAppMessages();
            print(response.map((e) => '${e.name}, ${e.text}'));
            expect(response.length, greaterThan(0));
          },
        ),
      );

      testWidgets(
        'Get app banners',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getAppBanners();
            print(response.map((e) => '${e.name}, ${e.text}'));
            expect(response.length, greaterThan(0));
          },
        ),
      );

      testWidgets(
        'Get main shops',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getShops();
            print(response.map((e) => '${e.name}'));
            expect(response.length, greaterThan(0));
          },
        ),
      );

      testWidgets(
        'Get all partners',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getPartners();
            print(response.map((e) => '${e.name}'));
            expect(response.length, greaterThan(0));
          },
        ),
      );

      testWidgets(
        'Get partner with id 100',
        (WidgetTester tester) async => await tester.runAsync(
          () async {
            await MLMobileApi.init(
              pAppSetValue: app,
              pAuthSetValue: auth,
            );

            final response = await MLMobileApiCommon.getPartner(id: '100');
            print('${response.name}');
            expect(response.id, equals(100));
          },
        ),
      );
    },
  );
}

```
