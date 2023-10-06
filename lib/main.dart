import 'package:florify/constants/behaviour/app_behaviour.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/card/cubit/card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/utils/router/router.dart';
import 'package:florify/utils/theme/main_theme.dart';

void main() async {
  init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<HomeCubit>(),
        ),
        BlocProvider(
          create: (context) => locator<CardCubit>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      onGenerateRoute: OngenerateRoutes.instance.routeGenerator,
      initialRoute: NavigatorConst.initialScreeen,
      scrollBehavior: AppBehaviour(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.0,
          ),
          child: child!,
        );
      },
    );
  }
}
