import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Core/utils/shared_preference_utils.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Model/signupentity.dart';
import 'package:board_mobile/Features/Auth/signup/Data/Repostry/basereposotrysignup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

@injectable
class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._baseReposotrySignUp, this._sharedPreferencesUtils)
      : super(const SignupState.initial());

  final BaseReposotrySignUp _baseReposotrySignUp;
  final SharedPreferencesUtils _sharedPreferencesUtils;

  Future<void> emitSignUp(
    String name,
    String password,
    String deviceToken,
  ) async {
    emit(const SignupState.loading());
    final response = await _baseReposotrySignUp.signup(name, password);

    response.fold(
      (l) => emit(SignupState.error(l)),
      (r) {
        _sharedPreferencesUtils.setToken(r.token);
        emit(SignupState.success(r));
      },
    );
  }
}
