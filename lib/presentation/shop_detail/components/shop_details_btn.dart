import 'package:flutter/material.dart';

class ShopDetailsBtn extends StatelessWidget {
  const ShopDetailsBtn({super.key, required this.ontap, required this.child});
  final Function ontap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        ontap();
      },
    );
  }
}
