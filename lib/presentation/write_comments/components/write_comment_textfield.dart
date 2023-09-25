import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class CommentTextfield extends StatelessWidget {
  const CommentTextfield(
      {super.key,
      required this.validator,
      required this.controller,
      required this.hintText,
      required this.helperText});
  final Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  final String helperText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorConstants.kgrey,
      controller: controller,
      maxLength: 400,
      maxLines: 6,
      onChanged: (v) {},
      validator: (v) {
        return validator!(v);
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
