// import 'package:board_mobile/Core/api/api_consumer.dart';
// import 'package:board_mobile/Core/api/end_points.dart';
// import 'package:board_mobile/Features/Auth/forgetPassword/Data/Model/forgetpasswordentity.dart';
// import 'package:injectable/injectable.dart';

// abstract class ForgetPasswordWebService {
//   Future<ForgetPasswordEntity> forgetPassword(
//     String name,
//     String password,
//     // String deviceToken,
//   );
// }

// @Singleton(as: ForgetPasswordWebService)
// class ForgetPasswordWebServiceImpl implements ForgetPasswordWebService {
//   final ApiConsumer _apiConsumer;

//   ForgetPasswordWebServiceImpl(this._apiConsumer);

//   @override
//   Future<ForgetPasswordEntity> forgetPassword(String name, String password) async {
//     final response = await _apiConsumer.post(
//       EndPoints.loginUrl,
//       body: {
//         "name": name,
//         "password": password,
//         // "device_token":deviceToken,
//       },
//     );
//     return ForgetPasswordEntity.fromJson(response);
//   }
// }
