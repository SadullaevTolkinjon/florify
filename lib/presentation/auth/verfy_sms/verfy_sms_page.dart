import 'package:florify/di/injection.dart';
import 'package:florify/presentation/auth/verfy_sms/cubit/sms_verify_cubit.dart';
import 'package:florify/presentation/auth/verfy_sms/sms_verify_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifySmsPage extends StatelessWidget {
  const VerifySmsPage({super.key,required this.phoneNumber});
final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SmsVerifyCubit>(),
      child:  SmsVerfyView(phoneNumber: phoneNumber,),
    );
  }
}
