
import 'package:flutter/material.dart';

class NavBarBox extends StatelessWidget {
  const NavBarBox({super.key, required this.icon});
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Container(
       
        alignment: Alignment.center,
        height: 24,
        width: 24,
        child: icon,
      ),
    );
  }
}
