import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/application/search/search_bloc.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/downloads/downloads_model/downloads_model.dart';
import 'package:movie_application/domain/downloads/repository/downloads_repository.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

@Injectable()
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final DownloadsRepository downloadsRepository;
  FastLaughBloc(this.downloadsRepository) : super(FastLaughState.initital()) {
    on<initialize>((event, emit) async {
      emit(const FastLaughState(
          vidoeListimage: [], isloading: true, iserror: false));
      final result = await downloadsRepository.getdownloadsImages();

      final data = result.fold((MainFailure l) {
        return const FastLaughState(
          vidoeListimage: [],
          isloading: false,
          iserror: true,
        );
      }, (resp) {
        return FastLaughState(
            vidoeListimage: resp.results, isloading: false, iserror: false);
      });
      emit(data);
    });
  }
}
