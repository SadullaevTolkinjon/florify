import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_screen_state.dart';
part 'splash_screen_cubit.freezed.dart';

@injectable
class SplashScreenCubit
    extends BuildableCubit<SplashScreenState, SplashScreenBuildable> {
  SplashScreenCubit() : super(const SplashScreenBuildable());
  Future navigateToHome() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    build((buildable) => buildable.copyWith(success: true));
  }
}
