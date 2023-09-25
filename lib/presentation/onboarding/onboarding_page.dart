import 'package:florify/di/injection.dart';
import 'package:florify/presentation/onboarding/cubit/onboarding_cubit.dart';
import 'package:florify/presentation/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<OnboardingCubit>(),
      child:  OnboardingView(),
    );
  }
}
