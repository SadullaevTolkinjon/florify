import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class TextFormfieldProfile extends StatelessWidget {
  TextFormfieldProfile(
      {super.key,
      required this.validator,
      required this.controller,
      required this.hintText,
      required this.helperText,
      this.heleperTextColor});
  final Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  final String helperText;
  Color? heleperTextColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          helperText,
          style: TextStyle(
            fontSize: AppSizes.geth(context, 0.016),
            color: heleperTextColor ?? ColorConstants.black.withOpacity(0.3),
          ),
        ),
        MyPadding(
          height: AppSizes.geth(context, 0.006),
        ),
        TextFormField(
          cursorColor: ColorConstants.kgrey,
          controller: controller,
          onChanged: (v) {},
          validator: (v) {
            return validator!(v);
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
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
        ),
      ],
    );
  }
}
