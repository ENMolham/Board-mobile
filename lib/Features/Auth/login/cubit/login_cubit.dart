import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Core/utils/shared_preference_utils.dart';
import 'package:board_mobile/Features/Auth/login/Data/Model/loginentity.dart';
import 'package:board_mobile/Features/Auth/login/Data/Repostry/basereposotrylogin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._baseReposotryLogin, this._sharedPreferencesUtils)
      : super(const LoginState.initial());

  final BaseReposotryLogin _baseReposotryLogin;
  final SharedPreferencesUtils _sharedPreferencesUtils;

  Future<void> emitLogin(
    String name,
    String password,
    String deviceToken,
  ) async {
    emit(const LoginState.loading());
    final response = await _baseReposotryLogin.login(name, password);

    response.fold(
      (l) => emit(LoginState.error(l)),
      (r) {
        _sharedPreferencesUtils.setToken(r.token);
        emit(LoginState.success(r));
      },
    );
  }
}
