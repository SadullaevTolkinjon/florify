import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class SnackbarWidgets {
  static showError(BuildContext context, String key) {
    AnimatedSnackBar.material(
      key,
      type: AnimatedSnackBarType.error,
      duration: const Duration(seconds: 5),
    ).show(context);
  }

  static showSuccess(BuildContext context, String key) {
    AnimatedSnackBar.material(
      key,
      type: AnimatedSnackBarType.success,
      duration: const Duration(seconds: 5),
    ).show(context);
  }

  static showInfo(BuildContext context, String key) {
    AnimatedSnackBar.material(key,
            type: AnimatedSnackBarType.info,
            duration: const Duration(seconds: 5),
            mobilePositionSettings: MobilePositionSettings(
                topOnAppearance: AppSizes.geth(context, 0.07)))
        .show(context);
  }
}
