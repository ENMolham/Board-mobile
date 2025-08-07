import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseReposotryLogin {
  Future<Either<NetworkExceptions, LoginEntity>> login(
    String name,
    String password,
    // String deviceToken,
  );
}
