import 'package:bloc/bloc.dart';
import 'package:florify/data/preferences/token_preferences.dart';
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
  MyCommentsCubit(this._repository,this._preference) : super(const MyCommentsBuildable());
  fetchMyComments() async {
    build((buildable) =>
        buildable.copyWith(loading: true, success: false, failed: false));
    try {
      await _repository.fetchUserComments("" );
build((buildable) => buildable.copyWith(loading: false,success: true,failed: false));
    } catch (e) {
build((buildable) => buildable.copyWith(loading: false,success: false,failed: true,error: e.toString()));
    }
  }

  Future userId()async{
    final user = await _preference.getUser();
    
  }
}
