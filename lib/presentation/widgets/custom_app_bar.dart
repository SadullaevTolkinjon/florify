import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      elevation: 0,
      centerTitle: true,
      title: Text(title),
    );
  }
}
Widget buildCustomAppBar(BuildContext context,String title){
  return CustomAppBarWidget(title: title);
}