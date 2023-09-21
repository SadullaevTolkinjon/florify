import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

@injectable
class FavoriteCubit extends BuildableCubit<FavoriteState, FavoriteBuildable> {
  FavoriteCubit() : super(const FavoriteBuildable());
  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(
        failed: false,
        success: false,
        selectedTab: index,
      ),
    );
  }
}
