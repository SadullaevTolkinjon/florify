import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

@injectable
class DetailsCubit extends BuildableCubit<DetailsState, DetailsBuildable> {
  DetailsCubit() : super(const DetailsBuildable());
  changeImages(int index) {
    build((buildable) => buildable.copyWith(currentIndex: index));
  }

  selectTabs(index) {
    build((buildable) => buildable.copyWith(selectedTab: index));
  }
}
