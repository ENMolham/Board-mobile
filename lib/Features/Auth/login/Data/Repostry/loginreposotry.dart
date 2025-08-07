import 'package:board_mobile/Core/Network/network_info.dart';
import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:board_mobile/Features/Auth/login/Data/Repostry/basereposotrylogin.dart';
import 'package:board_mobile/Features/Auth/login/Data/Web%20Service/loginwebservice.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseReposotryLogin)
class LoginReposotryImpl implements BaseReposotryLogin {
  final NetworkInfo _networkInfo;
  final LoginWebService _loginWebService;

  LoginReposotryImpl(
      {required NetworkInfo networkInfo,
      required LoginWebService loginWebService})
      : _networkInfo = networkInfo,
        _loginWebService = loginWebService;

  @override
  Future<Either<NetworkExceptions, LoginEntity>> login(
      String name, String password) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _loginWebService.login(name, password);
        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
