import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn({
    super.key,
    required this.ontap,
    required this.icon,
  });
  final Function ontap;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: icon,
    );
  }
}
