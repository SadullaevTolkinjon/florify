import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/my_comments/my_comments_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_comments_state.dart';
part 'my_comments_cubit.freezed.dart';

@injectable
class MyCommentsCubit
    extends BuildableCubit<MyCommentsState, MyCommentsBuildable> {
  final MainRepository _repository;
  final TokenPreference _preference;
  MyCommentsCubit(this._repository, this._preference)
      : super(const MyCommentsBuildable());
  fetchMyComments() async {
    build((buildable) =>
        buildable.copyWith(loading: true, success: false, failed: false));
    try {
      final clientId = await userId();
      final MyCommmentsModel data =
          await _repository.fetchUserComments(clientId);
      build((buildable) => buildable.copyWith(
            loading: false,
            success: true,
            failed: false,
            comments: data.data!.comments!,
          ));
    } catch (e) {
      build((buildable) => buildable.copyWith(
          loading: false, success: false, failed: true, error: e.toString()));
    }
  }

  deleteComment(String commentId) async {
    build((buildable) => buildable.copyWith(
          isModalHud: true,
        ));
    try {
      await _repository.deleteComment(commentId);
      final clientId = await userId();
      final MyCommmentsModel data =
          await _repository.fetchUserComments(clientId);
      build((buildable) => buildable.copyWith(
            isModalHud: false,
            comments: data.data!.comments!,
          ));
    } catch (e) {
      build((buildable) => buildable.copyWith(isModalHud: false));
    }
  }

  Future userId() async {
    String? clientId;
    final user = await _preference.getUser();
    if (user != null) {
      final usermodel = UserModel.fromJson(jsonDecode(user));
      clientId = usermodel.data!.client!.id!;
    } else {
      clientId = null;
    }
    return clientId;
  }
}
