part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.success(SignUpEntity signUpEntity) = _Success;
  const factory SignupState.error(NetworkExceptions networkExceptions) = _Error;
}
