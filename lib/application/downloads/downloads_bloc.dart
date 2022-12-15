import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/downloads/downloads_model/downloads_model.dart';
import 'package:movie_application/domain/downloads/repository/downloads_repository.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@Injectable()
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsRepository downloadsRepository;

  DownloadsBloc(this.downloadsRepository) : super(DownloadsState.initial()) {
    on<GetDownloadImages>((event, emit) async {
      emit(const DownloadsState(
        isloading: true,
        downloadimages: [],
        iserror: false,
      ));
      final result = await downloadsRepository.getdownloadsImages();
      final data = result.fold((MainFailure l) {
        return const DownloadsState(
            isloading: false, downloadimages: [], iserror: true);
      }, (list) {
        return DownloadsState(
            isloading: false, downloadimages: list.results, iserror: false);
      });
      emit(data);
    });
  }
}
