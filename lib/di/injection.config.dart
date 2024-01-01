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
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../data/api/api.dart' as _i6;
import '../data/api/auth_api.dart' as _i7;
import '../data/api/dio_api.dart' as _i9;
import '../data/api/main_api.dart' as _i11;
import '../data/preferences/token_preferences.dart' as _i5;
import '../domain/repository/main_repository.dart' as _i12;
import '../domain/service/main_serivce.dart' as _i13;
import '../presentation/all_category_product/cubit/all_category_product_cubit.dart'
    as _i20;
import '../presentation/auth/sign_up/cubit/sign_up_cubit.dart' as _i18;
import '../presentation/auth/verfy_sms/cubit/sms_verify_cubit.dart' as _i19;
import '../presentation/card/cubit/card_cubit.dart' as _i21;
import '../presentation/catalog/cubit/catalog_cubit.dart' as _i22;
import '../presentation/favorite/cubit/favorite_cubit.dart' as _i24;
import '../presentation/home/cubit/home_cubit.dart' as _i25;
import '../presentation/language/cubit/language_cubit.dart' as _i3;
import '../presentation/my_comments/cubit/my_comments_cubit.dart' as _i14;
import '../presentation/onboarding/cubit/onboarding_cubit.dart' as _i8;
import '../presentation/order_history/cubit/order_history_cubit.dart' as _i15;
import '../presentation/product_details/cubit/details_cubit.dart' as _i23;
import '../presentation/search/cubit/search_cubit.dart' as _i16;
import '../presentation/shop_detail/cubit/shop_details_cubit.dart' as _i17;
import '../presentation/splash/cubit/splash_screen_cubit.dart' as _i10;
import 'data_module.dart' as _i26;

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
    gh.factory<_i3.LanguageCubit>(() => _i3.LanguageCubit());
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i5.TokenPreference>(
        () => _i5.TokenPreference(gh<_i4.SharedPreferences>()));
    gh.factory<_i6.Api>(() => _i6.Api(gh<_i5.TokenPreference>()));
    gh.factory<_i7.AuthApi>(() => _i7.AuthApi(gh<_i6.Api>()));
    gh.factory<_i8.OnboardingCubit>(
        () => _i8.OnboardingCubit(gh<_i5.TokenPreference>()));
    gh.factory<_i9.ServiceApiExample>(
        () => _i9.ServiceApiExample(gh<_i5.TokenPreference>()));
    gh.factory<_i10.SplashScreenCubit>(
        () => _i10.SplashScreenCubit(gh<_i5.TokenPreference>()));
    gh.factory<_i11.MainApi>(() => _i11.MainApi(
          gh<_i6.Api>(),
          gh<_i9.ServiceApiExample>(),
        ));
    gh.factory<_i12.MainRepository>(() => _i12.MainRepository(
          gh<_i11.MainApi>(),
          gh<_i5.TokenPreference>(),
          gh<_i9.ServiceApiExample>(),
        ));
    gh.factory<_i13.MainService>(() => _i13.MainService(
          gh<_i11.MainApi>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i14.MyCommentsCubit>(() => _i14.MyCommentsCubit(
          gh<_i12.MainRepository>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i15.OrderHistoryCubit>(() => _i15.OrderHistoryCubit(
          gh<_i12.MainRepository>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i16.SearchCubit>(
        () => _i16.SearchCubit(gh<_i12.MainRepository>()));
    gh.factory<_i17.ShopDetailsCubit>(
        () => _i17.ShopDetailsCubit(gh<_i12.MainRepository>()));
    gh.factory<_i18.SignUpCubit>(
        () => _i18.SignUpCubit(gh<_i12.MainRepository>()));
    gh.factory<_i19.SmsVerifyCubit>(() => _i19.SmsVerifyCubit(
          gh<_i12.MainRepository>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i20.AllCategoryProductCubit>(() => _i20.AllCategoryProductCubit(
          gh<_i13.MainService>(),
          gh<_i5.TokenPreference>(),
          gh<_i12.MainRepository>(),
        ));
    gh.factory<_i21.CardCubit>(() => _i21.CardCubit(
          gh<_i13.MainService>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i22.CatalogCubit>(
        () => _i22.CatalogCubit(gh<_i13.MainService>()));
    gh.factory<_i23.DetailsCubit>(() => _i23.DetailsCubit(
          gh<_i13.MainService>(),
          gh<_i5.TokenPreference>(),
          gh<_i12.MainRepository>(),
        ));
    gh.factory<_i24.FavoriteCubit>(() => _i24.FavoriteCubit(
          gh<_i13.MainService>(),
          gh<_i5.TokenPreference>(),
          gh<_i12.MainRepository>(),
        ));
    gh.factory<_i25.HomeCubit>(() => _i25.HomeCubit(
          gh<_i13.MainService>(),
          gh<_i5.TokenPreference>(),
          gh<_i12.MainRepository>(),
        ));
    return this;
  }
}

class _$DataModule extends _i26.DataModule {}
