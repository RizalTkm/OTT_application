import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/downloads/downloads_model/downloads_model.dart';
import 'package:movie_application/domain/downloads/repository/downloads_repository.dart';
import 'package:movie_application/domain/new_hot/comingsoon_model/new_hot.dart';
import 'package:movie_application/domain/new_hot/everyone_watching_model/everyone_watching_model.dart';
import 'package:movie_application/domain/new_hot/repository/hotandNew_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewRepository hotAndNewRepository;
  final DownloadsRepository downloadsRepository;

  HomeBloc(this.hotAndNewRepository, this.downloadsRepository)
      : super(HomeState.initial()) {
    on<getHomeScreenData>((event, emit) async {
      emit(HomeState(
          dataID: DateTime.now().millisecondsSinceEpoch.toString(),
          homeMainImage: [],
          releasedPYMovies: [],
          trendingNowMovies: [],
          tenseDaramas: [],
          southIndianCinema: [],
          topTenTvshows: [],
          iserror: false,
          isloading: true));
      final movieData = await hotAndNewRepository.getHotAndNewMovieData();
      final tvData = await hotAndNewRepository.getHotAndNewTvData();
      final homeMainPageData = await downloadsRepository.getdownloadsImages();

      final movieState = movieData.fold((MainFailure l) {
        return HomeState(
            dataID: DateTime.now().millisecondsSinceEpoch.toString(),
            homeMainImage: [],
            releasedPYMovies: [],
            trendingNowMovies: [],
            tenseDaramas: [],
            southIndianCinema: [],
            topTenTvshows: [],
            iserror: true,
            isloading: false);
      }, (r) {
        final releasedPY = r.results;
        final trendingMovies = r.results;
        final southIndianMovies = r.results;
        final tensedramas = r.results;

        return HomeState(
            dataID: DateTime.now().millisecondsSinceEpoch.toString(),
            homeMainImage: state.homeMainImage,
            releasedPYMovies: releasedPY,
            trendingNowMovies: trendingMovies,
            tenseDaramas: tensedramas,
            southIndianCinema: southIndianMovies,
            topTenTvshows: state.topTenTvshows,
            iserror: false,
            isloading: false);
      });
      emit(movieState);

      final tvState = tvData.fold((MainFailure l) {
        return HomeState(
            dataID: DateTime.now().millisecondsSinceEpoch.toString(),
            homeMainImage: [],
            releasedPYMovies: [],
            trendingNowMovies: [],
            tenseDaramas: [],
            southIndianCinema: [],
            topTenTvshows: [],
            iserror: false,
            isloading: false);
      }, (r) {
        return HomeState(
            dataID: DateTime.now().millisecondsSinceEpoch.toString(),
            homeMainImage: state.homeMainImage,
            releasedPYMovies: state.releasedPYMovies,
            trendingNowMovies: state.trendingNowMovies,
            tenseDaramas: state.tenseDaramas,
            southIndianCinema: state.southIndianCinema,
            topTenTvshows: r.results,
            iserror: false,
            isloading: false);
      });
      emit(tvState);

      final homeMainImageState = homeMainPageData.fold((MainFailure l) {
        return HomeState(
            dataID: DateTime.now().millisecondsSinceEpoch.toString(),
            homeMainImage: [],
            releasedPYMovies: [],
            trendingNowMovies: [],
            tenseDaramas: [],
            southIndianCinema: [],
            topTenTvshows: [],
            iserror: false,
            isloading: false);
      }, (r) {
        return HomeState(
            dataID: DateTime.now().millisecondsSinceEpoch.toString(),
            homeMainImage: r.results,
            releasedPYMovies: state.releasedPYMovies,
            trendingNowMovies: state.trendingNowMovies,
            tenseDaramas: state.tenseDaramas,
            southIndianCinema: state.southIndianCinema,
            topTenTvshows: state.topTenTvshows,
            iserror: false,
            isloading: false);
      });
      emit(homeMainImageState);
    });
  }
}
