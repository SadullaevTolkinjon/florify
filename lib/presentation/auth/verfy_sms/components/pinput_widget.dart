import 'dart:math';

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/auth/verfy_sms/cubit/sms_verify_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class PinputField extends StatelessWidget {
  const PinputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        onCompleted: (pin) =>
            BlocProvider.of<SmsVerifyCubit>(context).editingCompleted(pin),
        onChanged: (pin) {
          BlocProvider.of<SmsVerifyCubit>(context).editingCompleted2(pin);
        },
        validator: (value) {
          return "";
        },
        disabledPinTheme: PinTheme(
          height: AppSizes.geth(context, 0.074),
          width: AppSizes.geth(context, 0.074),
          textStyle: TextStyle(
              fontSize: 20,
              color: ColorConstants.black,
              fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(234, 239, 243, 1),
            ),
            borderRadius: BorderRadius.circular(20),
            color: ColorConstants.kgrey,
          ),
        ),
        defaultPinTheme: PinTheme(
          height: AppSizes.geth(context, 0.074),
          width: AppSizes.geth(context, 0.074),
          textStyle: TextStyle(
              fontSize: 20,
              color: ColorConstants.black,
              fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            color: ColorConstants.kgrey,
            border: Border.all(
              color: const Color.fromRGBO(234, 239, 243, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        focusedPinTheme: PinTheme(
          height: AppSizes.geth(context, 0.074),
          width: AppSizes.geth(context, 0.074),
          textStyle: TextStyle(
              fontSize: 20,
              color: ColorConstants.black,
              fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            color: ColorConstants.kgrey,
            border: Border.all(
              color: const Color.fromRGBO(234, 239, 243, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
