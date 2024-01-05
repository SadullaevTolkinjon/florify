part of 'edit_profile_cubit.dart';
abstract class EditProfileState{}
@freezed
class EditProfilebuildable extends EditProfileState with _$EditProfilebuildable {
   const factory EditProfilebuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    File? image,
   
  }) = _EditProfilebuildable;
}
