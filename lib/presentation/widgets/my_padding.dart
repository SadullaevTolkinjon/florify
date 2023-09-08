import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({super.key, this.height, this.width});
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    );
  }
}
