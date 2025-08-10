import 'package:board_mobile/Core/error/network_exceptions.dart';
import 'package:board_mobile/Core/utils/shared_preference_utils.dart';
import 'package:board_mobile/Features/Auth/forgetPassword/Data/Model/forgetpasswordentity.dart';
import 'package:board_mobile/Features/Auth/forgetPassword/Data/Repostry/basereposotryforgetpassword.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgetpassword_state.dart';
part 'forgetpassword_cubit.freezed.dart';

@injectable
class ForgetPasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetPasswordCubit(
    this._baseReposotryForgetPassword,
    this._sharedPreferencesUtils,
  ) : super(const ForgetpasswordState.initial());

  final BaseReposotryForgetPassword _baseReposotryForgetPassword;
  final SharedPreferencesUtils _sharedPreferencesUtils;

  Future<void> emitForgetPassword(
    String name,
    String password,
    String deviceToken,
  ) async {
    emit(const ForgetpasswordState.loading());
    final response = await _baseReposotryForgetPassword.forgetPassword(
      name,
      password,
    );

    response.fold((l) => emit(ForgetpasswordState.error(l)), (r) {
      _sharedPreferencesUtils.setToken(r.token);
      emit(ForgetpasswordState.success(r));
    });
  }
}
