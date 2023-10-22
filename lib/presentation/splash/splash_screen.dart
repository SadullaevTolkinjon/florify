import 'package:florify/constants/images/images_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/splash/cubit/splash_screen_cubit.dart';
import 'package:florify/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SplashScreenCubit>(),
      child: const SplashView(),
    );
  }
}
