import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';
@injectable
class EditProfileCubit extends BuildableCubit<EditProfileState,EditProfilebuildable> {
  EditProfileCubit() : super(const EditProfilebuildable());
   Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      build((buildable) => buildable.copyWith(
          image: imageTemporary));

      return imageTemporary;
    } catch (e) {
      return null;
    }
  }
}
