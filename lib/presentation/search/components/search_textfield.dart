import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.onChanged});

  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorConstants.kgrey,
      controller: controller,
      onChanged: (v) {
        onChanged!(v);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: AppSizes.geth(context, 0.01),
          horizontal: AppSizes.geth(context, 0.02),
        ),
        filled: true,
        hoverColor: ColorConstants.blue,
        focusColor: ColorConstants.kgrey,
        fillColor: ColorConstants.kgrey,
        hintText: hintText,
       
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.kgrey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.kgrey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.kgrey),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.kgrey),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
