part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required String dataID,
      required List<DownloadsResult> homeMainImage,
      required List<ComingSoonDataResult> releasedPYMovies,
      required List<ComingSoonDataResult> trendingNowMovies,
      required List<ComingSoonDataResult> tenseDaramas,
      required List<ComingSoonDataResult> southIndianCinema,
      required List<EveryoneWatchingDataResult> topTenTvshows,
      required bool iserror,
      required bool isloading}) = _HomeState;

  factory HomeState.initial() => HomeState(
      dataID: DateTime.now().microsecondsSinceEpoch.toString(),
      homeMainImage: [],
      releasedPYMovies: [],
      trendingNowMovies: [],
      tenseDaramas: [],
      southIndianCinema: [],
      topTenTvshows: [],
      iserror: false,
      isloading: false);
}
