part of 'language_cubit.dart';

abstract class LanguageState {}

@freezed
class LanguageBuildable extends LanguageState with _$LanguageBuildable {
  const factory LanguageBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(0) int selectedLang,
  }) = _LanguageBuildable;
}
