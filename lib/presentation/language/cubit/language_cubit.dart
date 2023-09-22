import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'language_state.dart';
part 'language_cubit.freezed.dart';

@injectable
class LanguageCubit extends BuildableCubit<LanguageState, LanguageBuildable> {
  LanguageCubit() : super(const LanguageBuildable());
  selectLang(int index) {
    build(
      (buildable) => buildable.copyWith(selectedLang: index),
    );
  }
}
