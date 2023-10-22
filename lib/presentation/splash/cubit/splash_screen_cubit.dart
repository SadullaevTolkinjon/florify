import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_screen_state.dart';
part 'splash_screen_cubit.freezed.dart';

@injectable
class SplashScreenCubit
    extends BuildableCubit<SplashScreenState, SplashScreenBuildable> {
  final TokenPreference _preference;
  SplashScreenCubit(this._preference) : super(const SplashScreenBuildable());
  Future navigateToHome(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    build((buildable) => buildable.copyWith(success: true));
  }

  navigate(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) async => await _preference.getSplash() != null
          ? Navigator.pushNamedAndRemoveUntil(
              context, NavigatorConst.home, (route) => false)
          : Navigator.pushNamedAndRemoveUntil(
              context, NavigatorConst.onboarding, (route) => false),
    );
  }
}
