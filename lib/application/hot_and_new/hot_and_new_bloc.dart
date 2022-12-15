import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/new_hot/comingsoon_model/new_hot.dart';
import 'package:movie_application/domain/new_hot/everyone_watching_model/everyone_watching_model.dart';
import 'package:movie_application/domain/new_hot/repository/hotandNew_repo.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@Injectable()
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewRepository hotAndNewRepository;

  HotAndNewBloc(this.hotAndNewRepository) : super(HotAndNewState.initial()) {
    on<GetHotAndNewMovieData>((event, emit) async {
      emit(const HotAndNewState(
          comingSoondataList: [],
          everyoneWatchingList: [],
          isloading: true,
          isError: false));
      final result = await hotAndNewRepository.getHotAndNewMovieData();

      final data = result.fold((MainFailure l) {
        return const HotAndNewState(
            comingSoondataList: [],
            everyoneWatchingList: [],
            isloading: false,
            isError: true);
      }, (r) {
        return HotAndNewState(
            comingSoondataList: r.results,
            everyoneWatchingList: [],
            isloading: false,
            isError: false);
      });
      emit(data);
    });

    on<GetHotAndNewTvData>((event, emit) async {
      emit(const HotAndNewState(
          comingSoondataList: [],
          everyoneWatchingList: [],
          isloading: true,
          isError: false));
      final result = await hotAndNewRepository.getHotAndNewTvData();

      final data = result.fold((MainFailure l) {
        return const HotAndNewState(
            comingSoondataList: [],
            everyoneWatchingList: [],
            isloading: false,
            isError: true);
      }, (r) {
        return HotAndNewState(
            comingSoondataList: [],
            everyoneWatchingList: r.results,
            isloading: false,
            isError: false);
      });
      emit(data);
    });
  }
}
