// import 'package:board_mobile/Core/Network/network_info.dart';
// import 'package:board_mobile/Core/error/network_exceptions.dart';
// import 'package:board_mobile/Features/Auth/forgetPassword/Data/Model/forgetpasswordentity.dart';
// import 'package:board_mobile/Features/Auth/forgetPassword/Data/Repostry/basereposotryforgetpassword.dart';
// import 'package:board_mobile/Features/Auth/forgetPassword/Data/Web%20Service/forgetpasswordwebservice.dart';
// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';

// @Singleton(as: BaseReposotryForgetPassword)
// class ForgetPasswordReposotryImpl implements BaseReposotryForgetPassword {
//   final NetworkInfo _networkInfo;
//   final ForgetPasswordWebService _forgetPasswordWebService;

//   ForgetPasswordReposotryImpl(
//       {required NetworkInfo networkInfo,
//       required ForgetPasswordWebService forgetPasswordWebService})
//       : _networkInfo = networkInfo,
//         _forgetPasswordWebService = forgetPasswordWebService;

//   @override
//   Future<Either<NetworkExceptions, ForgetPasswordEntity>> forgetPassword(
//       String name, String password) async {
//     if (await _networkInfo.isConnected) {
//       try {
//         final response = await _forgetPasswordWebService.forgetPassword(name, password);
//         return Right(response);
//       } catch (e) {
//         return Left(NetworkExceptions.getException(e));
//       }
//     } else {
//       return const Left(NetworkExceptions.noInternetConnection());
//     }
//   }
// }
