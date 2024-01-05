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
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../data/api/api.dart' as _i7;
import '../data/api/auth_api.dart' as _i8;
import '../data/api/dio_api.dart' as _i10;
import '../data/api/main_api.dart' as _i12;
import '../data/preferences/token_preferences.dart' as _i6;
import '../domain/repository/main_repository.dart' as _i13;
import '../domain/service/main_serivce.dart' as _i14;
import '../presentation/all_category_product/cubit/all_category_product_cubit.dart'
    as _i22;
import '../presentation/auth/sign_up/cubit/sign_up_cubit.dart' as _i19;
import '../presentation/auth/verfy_sms/cubit/sms_verify_cubit.dart' as _i20;
import '../presentation/card/cubit/card_cubit.dart' as _i23;
import '../presentation/catalog/cubit/catalog_cubit.dart' as _i24;
import '../presentation/edit_profile/cubit/edit_profile_cubit.dart' as _i3;
import '../presentation/favorite/cubit/favorite_cubit.dart' as _i26;
import '../presentation/home/cubit/home_cubit.dart' as _i27;
import '../presentation/language/cubit/language_cubit.dart' as _i4;
import '../presentation/my_comments/cubit/my_comments_cubit.dart' as _i15;
import '../presentation/onboarding/cubit/onboarding_cubit.dart' as _i9;
import '../presentation/order_history/cubit/order_history_cubit.dart' as _i16;
import '../presentation/product_details/cubit/details_cubit.dart' as _i25;
import '../presentation/search/cubit/search_cubit.dart' as _i17;
import '../presentation/shop_detail/cubit/shop_details_cubit.dart' as _i18;
import '../presentation/splash/cubit/splash_screen_cubit.dart' as _i11;
import '../presentation/write_comments/cubit/write_comment_cubit.dart' as _i21;
import 'data_module.dart' as _i28;

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
    gh.factory<_i3.EditProfileCubit>(() => _i3.EditProfileCubit());
    gh.factory<_i4.LanguageCubit>(() => _i4.LanguageCubit());
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i6.TokenPreference>(
        () => _i6.TokenPreference(gh<_i5.SharedPreferences>()));
    gh.factory<_i7.Api>(() => _i7.Api(gh<_i6.TokenPreference>()));
    gh.factory<_i8.AuthApi>(() => _i8.AuthApi(gh<_i7.Api>()));
    gh.factory<_i9.OnboardingCubit>(
        () => _i9.OnboardingCubit(gh<_i6.TokenPreference>()));
    gh.factory<_i10.ServiceApiExample>(
        () => _i10.ServiceApiExample(gh<_i6.TokenPreference>()));
    gh.factory<_i11.SplashScreenCubit>(
        () => _i11.SplashScreenCubit(gh<_i6.TokenPreference>()));
    gh.factory<_i12.MainApi>(() => _i12.MainApi(
          gh<_i7.Api>(),
          gh<_i10.ServiceApiExample>(),
        ));
    gh.factory<_i13.MainRepository>(() => _i13.MainRepository(
          gh<_i12.MainApi>(),
          gh<_i6.TokenPreference>(),
          gh<_i10.ServiceApiExample>(),
        ));
    gh.factory<_i14.MainService>(() => _i14.MainService(
          gh<_i12.MainApi>(),
          gh<_i6.TokenPreference>(),
        ));
    gh.factory<_i15.MyCommentsCubit>(() => _i15.MyCommentsCubit(
          gh<_i13.MainRepository>(),
          gh<_i6.TokenPreference>(),
        ));
    gh.factory<_i16.OrderHistoryCubit>(() => _i16.OrderHistoryCubit(
          gh<_i13.MainRepository>(),
          gh<_i6.TokenPreference>(),
        ));
    gh.factory<_i17.SearchCubit>(
        () => _i17.SearchCubit(gh<_i13.MainRepository>()));
    gh.factory<_i18.ShopDetailsCubit>(
        () => _i18.ShopDetailsCubit(gh<_i13.MainRepository>()));
    gh.factory<_i19.SignUpCubit>(
        () => _i19.SignUpCubit(gh<_i13.MainRepository>()));
    gh.factory<_i20.SmsVerifyCubit>(() => _i20.SmsVerifyCubit(
          gh<_i13.MainRepository>(),
          gh<_i6.TokenPreference>(),
        ));
    gh.factory<_i21.WriteCommentCubit>(
        () => _i21.WriteCommentCubit(gh<_i13.MainRepository>()));
    gh.factory<_i22.AllCategoryProductCubit>(() => _i22.AllCategoryProductCubit(
          gh<_i14.MainService>(),
          gh<_i6.TokenPreference>(),
          gh<_i13.MainRepository>(),
        ));
    gh.factory<_i23.CardCubit>(() => _i23.CardCubit(
          gh<_i14.MainService>(),
          gh<_i6.TokenPreference>(),
        ));
    gh.factory<_i24.CatalogCubit>(
        () => _i24.CatalogCubit(gh<_i14.MainService>()));
    gh.factory<_i25.DetailsCubit>(() => _i25.DetailsCubit(
          gh<_i14.MainService>(),
          gh<_i6.TokenPreference>(),
          gh<_i13.MainRepository>(),
        ));
    gh.factory<_i26.FavoriteCubit>(() => _i26.FavoriteCubit(
          gh<_i14.MainService>(),
          gh<_i6.TokenPreference>(),
          gh<_i13.MainRepository>(),
        ));
    gh.factory<_i27.HomeCubit>(() => _i27.HomeCubit(
          gh<_i14.MainService>(),
          gh<_i6.TokenPreference>(),
          gh<_i13.MainRepository>(),
        ));
    return this;
  }
}

class _$DataModule extends _i28.DataModule {}
