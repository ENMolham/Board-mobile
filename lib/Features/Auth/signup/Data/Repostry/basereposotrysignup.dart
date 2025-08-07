import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Model/signupentity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseReposotrySignUp {
  Future<Either<NetworkExceptions, SignUpEntity>> signup(
    String name,
    String password,
    // String deviceToken,
  );
}
