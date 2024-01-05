import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'write_comment_state.dart';
part 'write_comment_cubit.freezed.dart';

@injectable
class WriteCommentCubit
    extends BuildableCubit<WriteCommentState, WriteCommentsBuildable> {
  final MainRepository _repository;
  WriteCommentCubit(this._repository) : super(const WriteCommentsBuildable());

  getuser() async {
    String vvvv = "";
    var data = await _repository.getUser();
    if (data == null) {
      vvvv = "";
    } else {
      UserModel user = UserModel.fromJson(jsonDecode(data));
     vvvv=  user.data!.client!.id!;
    }
    return vvvv;
  }
  writeComment(int productId, int rate, String comment) async {
    build((buildable) => buildable.copyWith(loading: true,success: false,failed: false));

    try {
      var clientId = await getuser();
      await _repository.writeComment(productId, rate, comment, clientId);
      build((buildable) =>
          buildable.copyWith(loading: false, success: true, failed: false));
    } catch (e) {
      print(e);
      build((buildable) => buildable.copyWith(
          loading: false, success: false, failed: true, error: e.toString()));
    }
  }

  rate(double rate) {
    print(rate);
    build((buildable) => buildable.copyWith(rating: rate,success: false,failed: false));
  }

  
}
