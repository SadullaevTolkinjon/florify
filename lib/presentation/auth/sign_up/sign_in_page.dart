import 'package:florify/di/injection.dart';
import 'package:florify/presentation/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:florify/presentation/auth/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SignUpCubit>(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          title: const Text("Ro'yxatdan o'tish"),
        ),
        body: const SignUpView(),
      ),
    );
  }
}
