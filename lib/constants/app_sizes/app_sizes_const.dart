import 'package:flutter/material.dart';

class AppSizes {
  static double getH(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getW(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double geth(BuildContext context, var size) {
    return MediaQuery.of(context).size.height * size;
  }

  static double getw(BuildContext context, var size) {
    return MediaQuery.of(context).size.width * size;
  }
}
