import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/downloads/downloads_model/downloads_model.dart';
import 'package:movie_application/domain/downloads/repository/downloads_repository.dart';
import 'package:movie_application/domain/search/search_model/search_model.dart';
import 'package:movie_application/domain/search/search_repository/search_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository searchRepository;
  final DownloadsRepository downloadsRepository;
  SearchBloc(this.downloadsRepository, this.searchRepository)
      : super(SearchState.initial()) {
    //idlestate
    on<initialize>((event, emit) async {
      emit(const SearchState(
          searchResultList: [],
          downloadResultList: [],
          isloading: true,
          iserror: false));
      final result = await downloadsRepository.getdownloadsImages();
      final data = result.fold((MainFailure l) {
        return const SearchState(
            searchResultList: [],
            downloadResultList: [],
            isloading: false,
            iserror: true);
      }, (idlelist) {
        return SearchState(
            searchResultList: [],
            downloadResultList: idlelist.results,
            isloading: false,
            iserror: false);
      });
      emit(data);
    });

    //searchstate

    on<searchMovies>((event, emit) async {
      emit(const SearchState(
          searchResultList: [],
          downloadResultList: [],
          isloading: true,
          iserror: false));
      final result =
          await searchRepository.searchMovies(moviequery: event.moviename);
      final data = result.fold((MainFailure l) {
        return const SearchState(
            searchResultList: [],
            downloadResultList: [],
            isloading: false,
            iserror: true);
      }, (SearchResponse r) {
        return SearchState(
            searchResultList: r.results,
            downloadResultList: [],
            isloading: false,
            iserror: false);
      });
      emit(data);
    });
  }
}
