// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

import 'Core/api/api_consumer.dart' as _i989;
import 'Core/api/dio_consumer.dart' as _i425;
import 'Core/api/logging_interceptor.dart' as _i777;
import 'Core/error/error_interceptor.dart' as _i731;
import 'Core/Network/network_info.dart' as _i1071;
import 'Core/third_party_injection.dart' as _i540;
import 'Core/utils/shared_preference_utils.dart' as _i131;
import 'Features/Auth/forgetPassword/cubit/forgetpassword_cubit.dart' as _i1007;
import 'Features/Auth/forgetPassword/Data/Repostry/basereposotryforgetpassword.dart'
    as _i178;
import 'Features/Auth/forgetPassword/Data/Repostry/forgetpasswordreposotry.dart'
    as _i556;
import 'Features/Auth/forgetPassword/Data/Web%20Service/forgetpasswordwebservice.dart'
    as _i662;
import 'Features/Auth/login/cubit/login_cubit.dart' as _i323;
import 'Features/Auth/login/cubit/password_visibility_cubit.dart' as _i179;
import 'Features/Auth/login/Data/Repostry/basereposotrylogin.dart' as _i49;
import 'Features/Auth/login/Data/Repostry/loginreposotry.dart' as _i382;
import 'Features/Auth/login/Data/Web%20Service/loginwebservice.dart' as _i370;
import 'Features/Auth/signup/cubit/signup_cubit.dart' as _i145;
import 'Features/Auth/signup/Data/Repostry/basereposotrysignup.dart' as _i220;
import 'Features/Auth/signup/Data/Repostry/signupreposotry.dart' as _i713;
import 'Features/Auth/signup/Data/Web%20Service/signupwebservice.dart'
    as _i1059;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.factory<_i179.PasswordVisibilityCubit>(
      () => _i179.PasswordVisibilityCubit(),
    );
    gh.singleton<_i777.LoggingInterceptor>(() => _i777.LoggingInterceptor());
    gh.singleton<_i731.ErrorInterceptor>(() => _i731.ErrorInterceptor());
    gh.singleton<_i361.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i973.InternetConnectionChecker>(
      () => thirdPartyInjection.internetConnectionChecker,
    );
    gh.singleton<_i131.SharedPreferencesUtils>(
      () => thirdPartyInjection.sharedPreferencesUtils,
    );
    gh.lazySingleton<_i1071.NetworkInfo>(
      () => _i1071.NetworkInfoImpl(
        connectionChecker: gh<_i973.InternetConnectionChecker>(),
      ),
    );
    gh.singleton<_i989.ApiConsumer>(() => _i425.DioConsumer(gh<_i361.Dio>()));
    gh.singleton<_i1059.SignUpWebService>(
      () => _i1059.SignUpWebServiceImpl(gh<_i989.ApiConsumer>()),
    );
    gh.singleton<_i662.ForgetPasswordWebService>(
      () => _i662.ForgetPasswordWebServiceImpl(gh<_i989.ApiConsumer>()),
    );
    gh.singleton<_i370.LoginWebService>(
      () => _i370.LoginWebServiceImpl(gh<_i989.ApiConsumer>()),
    );
    gh.singleton<_i220.BaseReposotrySignUp>(
      () => _i713.SignUpReposotryImpl(
        networkInfo: gh<_i1071.NetworkInfo>(),
        signUpWebService: gh<_i1059.SignUpWebService>(),
      ),
    );
    gh.factory<_i145.SignupCubit>(
      () => _i145.SignupCubit(
        gh<_i220.BaseReposotrySignUp>(),
        gh<_i131.SharedPreferencesUtils>(),
      ),
    );
    gh.singleton<_i49.BaseReposotryLogin>(
      () => _i382.LoginReposotryImpl(
        networkInfo: gh<_i1071.NetworkInfo>(),
        loginWebService: gh<_i370.LoginWebService>(),
      ),
    );
    gh.singleton<_i178.BaseReposotryForgetPassword>(
      () => _i556.ForgetPasswordReposotryImpl(
        networkInfo: gh<_i1071.NetworkInfo>(),
        forgetPasswordWebService: gh<_i662.ForgetPasswordWebService>(),
      ),
    );
    gh.factory<_i323.LoginCubit>(
      () => _i323.LoginCubit(
        gh<_i49.BaseReposotryLogin>(),
        gh<_i131.SharedPreferencesUtils>(),
      ),
    );
    gh.factory<_i1007.ForgetPasswordCubit>(
      () => _i1007.ForgetPasswordCubit(
        gh<_i178.BaseReposotryForgetPassword>(),
        gh<_i131.SharedPreferencesUtils>(),
      ),
    );
    return this;
  }
}

class _$ThirdPartyInjection extends _i540.ThirdPartyInjection {}
