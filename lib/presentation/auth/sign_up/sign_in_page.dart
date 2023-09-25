import 'package:florify/presentation/auth/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text("Ro'yxatdan o'tish"),
      ),
      body: const SignUpView(),
    );
  }
}
