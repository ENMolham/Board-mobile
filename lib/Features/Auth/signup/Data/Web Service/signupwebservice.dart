import 'package:board_mobile/Core/api/api_consumer.dart';
import 'package:board_mobile/Core/api/end_points.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Model/signupentity.dart';
import 'package:injectable/injectable.dart';

abstract class SignUpWebService {
  Future<SignUpEntity> signup(
    String name,
    String password,
    // String deviceToken,
  );
}

@Singleton(as: SignUpWebService)
class SignUpWebServiceImpl implements SignUpWebService {
  final ApiConsumer _apiConsumer;

  SignUpWebServiceImpl(this._apiConsumer);

  @override
  Future<SignUpEntity> signup(String name, String password) async {
    final response = await _apiConsumer.post(
      EndPoints.loginUrl,
      body: {
        "name": name,
        "password": password,
        // "device_token":deviceToken,
      },
    );
    return SignUpEntity.fromJson(response);
  }
}
