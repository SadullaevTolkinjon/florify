import 'package:florify/constants/images/images_const.dart';
import 'package:florify/presentation/splash/cubit/splash_screen_cubit.dart';
import 'package:florify/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    context.read<SplashScreenCubit>().navigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          ImagesConst.logo2,
        ),
      ),
    );
  }
}
