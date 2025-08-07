import 'package:board_mobile/Core/api/api_consumer.dart';
import 'package:board_mobile/Core/api/end_points.dart';
import 'package:board_mobile/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:injectable/injectable.dart';

abstract class LoginWebService {
  Future<LoginEntity> login(
    String name,
    String password,
    // String deviceToken,
  );
}

@Singleton(as: LoginWebService)
class LoginWebServiceImpl implements LoginWebService {
  final ApiConsumer _apiConsumer;

  LoginWebServiceImpl(this._apiConsumer);

  @override
  Future<LoginEntity> login(String name, String password) async {
    final response = await _apiConsumer.post(
      EndPoints.loginUrl,
      body: {
        "name": name,
        "password": password,
        // "device_token":deviceToken,
      },
    );
    return LoginEntity.fromJson(response);
  }
}
