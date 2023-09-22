// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../data/api/api.dart' as _i3;
import '../data/api/auth_api.dart' as _i4;
import '../data/api/main_api.dart' as _i9;
import '../data/preferences/token_preferences.dart' as _i14;
import '../domain/repository/auth/auth/auth_repository.dart' as _i15;
import '../domain/repository/auth/auth/auth_repository_implementation.dart'
    as _i16;
import '../domain/repository/main_repository.dart' as _i10;
import '../domain/service/main_serivce.dart' as _i11;
import '../presentation/auth/login/bloc/login_bloc_bloc.dart' as _i17;
import '../presentation/favorite/cubit/favorite_cubit.dart' as _i6;
import '../presentation/home/cubit/home_cubit.dart' as _i7;
import '../presentation/language/cubit/language_cubit.dart' as _i8;
import '../presentation/product_details/cubit/details_cubit.dart' as _i5;
import '../presentation/splash/cubit/splash_screen_cubit.dart' as _i13;
import 'data_module.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i3.Api>(() => _i3.Api());
    gh.factory<_i4.AuthApi>(() => _i4.AuthApi(gh<_i3.Api>()));
    gh.factory<_i5.DetailsCubit>(() => _i5.DetailsCubit());
    gh.factory<_i6.FavoriteCubit>(() => _i6.FavoriteCubit());
    gh.factory<_i7.HomeCubit>(() => _i7.HomeCubit());
    gh.factory<_i8.LanguageCubit>(() => _i8.LanguageCubit());
    gh.factory<_i9.MainApi>(() => _i9.MainApi(gh<_i3.Api>()));
    gh.factory<_i10.MainRepository>(
        () => _i10.MainRepository(gh<_i9.MainApi>()));
    gh.factory<_i11.MainService>(() => _i11.MainService(gh<_i9.MainApi>()));
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i13.SplashScreenCubit>(() => _i13.SplashScreenCubit());
    gh.factory<_i14.TokenPreference>(
        () => _i14.TokenPreference(gh<_i12.SharedPreferences>()));
    gh.factory<_i15.AuthRepository>(() => _i16.AuthRepositoryImpl(
          gh<_i4.AuthApi>(),
          gh<_i14.TokenPreference>(),
        ));
    gh.factory<_i17.LoginBlocBloc>(
        () => _i17.LoginBlocBloc(gh<_i15.AuthRepository>()));
    return this;
  }
}

class _$DataModule extends _i18.DataModule {}
