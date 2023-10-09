import 'package:bloc/bloc.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

@injectable
class SignUpCubit extends BuildableCubit<SignUpState, SignUpBuildable> {
  final MainRepository _repository;
  SignUpCubit(this._repository) : super(const SignUpBuildable());
  Future verfyPhoneNumber(String phone) async {
    build((buildable) =>
        buildable.copyWith(loading: true, success: false, failed: false));
    try {
      await _repository.verfyPhoneNumber(phone);
      build((buildable) =>
          buildable.copyWith(loading: false, failed: false, success: true));
    } catch (e) {
      build((buildable) => buildable.copyWith(
          loading: false, failed: true, success: false, error: e.toString()));
    }
  }
}
