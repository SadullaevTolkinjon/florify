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
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../data/api/api.dart' as _i3;
import '../data/api/auth_api.dart' as _i4;
import '../data/api/main_api.dart' as _i6;
import '../data/preferences/token_preferences.dart' as _i9;
import '../domain/repository/main_repository.dart' as _i10;
import '../domain/service/main_serivce.dart' as _i11;
import '../presentation/all_category_product/cubit/all_category_product_cubit.dart'
    as _i17;
import '../presentation/auth/sign_up/cubit/sign_up_cubit.dart' as _i14;
import '../presentation/auth/verfy_sms/cubit/sms_verify_cubit.dart' as _i15;
import '../presentation/card/cubit/card_cubit.dart' as _i18;
import '../presentation/catalog/cubit/catalog_cubit.dart' as _i19;
import '../presentation/favorite/cubit/favorite_cubit.dart' as _i21;
import '../presentation/home/cubit/home_cubit.dart' as _i22;
import '../presentation/language/cubit/language_cubit.dart' as _i5;
import '../presentation/onboarding/cubit/onboarding_cubit.dart' as _i12;
import '../presentation/order_history/cubit/order_history_cubit.dart' as _i7;
import '../presentation/product_details/cubit/details_cubit.dart' as _i20;
import '../presentation/search/cubit/search_cubit.dart' as _i13;
import '../presentation/splash/cubit/splash_screen_cubit.dart' as _i16;
import 'data_module.dart' as _i23;

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
    gh.factory<_i5.LanguageCubit>(() => _i5.LanguageCubit());
    gh.factory<_i6.MainApi>(() => _i6.MainApi(gh<_i3.Api>()));
    gh.factory<_i7.OrderHistoryCubit>(() => _i7.OrderHistoryCubit());
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i9.TokenPreference>(
        () => _i9.TokenPreference(gh<_i8.SharedPreferences>()));
    gh.factory<_i10.MainRepository>(() => _i10.MainRepository(
          gh<_i6.MainApi>(),
          gh<_i9.TokenPreference>(),
        ));
    gh.factory<_i11.MainService>(() => _i11.MainService(
          gh<_i6.MainApi>(),
          gh<_i9.TokenPreference>(),
        ));
    gh.factory<_i12.OnboardingCubit>(
        () => _i12.OnboardingCubit(gh<_i9.TokenPreference>()));
    gh.factory<_i13.SearchCubit>(
        () => _i13.SearchCubit(gh<_i10.MainRepository>()));
    gh.factory<_i14.SignUpCubit>(
        () => _i14.SignUpCubit(gh<_i10.MainRepository>()));
    gh.factory<_i15.SmsVerifyCubit>(() => _i15.SmsVerifyCubit(
          gh<_i10.MainRepository>(),
          gh<_i9.TokenPreference>(),
        ));
    gh.factory<_i16.SplashScreenCubit>(
        () => _i16.SplashScreenCubit(gh<_i9.TokenPreference>()));
    gh.factory<_i17.AllCategoryProductCubit>(() => _i17.AllCategoryProductCubit(
          gh<_i11.MainService>(),
          gh<_i9.TokenPreference>(),
          gh<_i10.MainRepository>(),
        ));
    gh.factory<_i18.CardCubit>(() => _i18.CardCubit(
          gh<_i11.MainService>(),
          gh<_i9.TokenPreference>(),
        ));
    gh.factory<_i19.CatalogCubit>(
        () => _i19.CatalogCubit(gh<_i11.MainService>()));
    gh.factory<_i20.DetailsCubit>(() => _i20.DetailsCubit(
          gh<_i11.MainService>(),
          gh<_i9.TokenPreference>(),
          gh<_i10.MainRepository>(),
        ));
    gh.factory<_i21.FavoriteCubit>(() => _i21.FavoriteCubit(
          gh<_i11.MainService>(),
          gh<_i9.TokenPreference>(),
          gh<_i10.MainRepository>(),
        ));
    gh.factory<_i22.HomeCubit>(() => _i22.HomeCubit(
          gh<_i11.MainService>(),
          gh<_i9.TokenPreference>(),
          gh<_i10.MainRepository>(),
        ));
    return this;
  }
}

class _$DataModule extends _i23.DataModule {}
