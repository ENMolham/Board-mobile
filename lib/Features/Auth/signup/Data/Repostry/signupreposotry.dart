import 'package:board_mobile/Core/Network/network_info.dart';
import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Model/signupentity.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Repostry/basereposotrysignup.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Web%20Service/signupwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseReposotrySignUp)
class SignUpReposotryImpl implements BaseReposotrySignUp {
  final NetworkInfo _networkInfo;
  final SignUpWebService _signUpWebService;

  SignUpReposotryImpl(
      {required NetworkInfo networkInfo,
      required SignUpWebService signUpWebService})
      : _networkInfo = networkInfo,
        _signUpWebService = signUpWebService;

  @override
  Future<Either<NetworkExceptions, SignUpEntity>> signup(
      String name, String password) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _signUpWebService.signup(name, password);
        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
