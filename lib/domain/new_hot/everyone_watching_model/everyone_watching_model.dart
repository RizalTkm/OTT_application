import 'package:json_annotation/json_annotation.dart';

part 'everyone_watching_model.g.dart';

@JsonSerializable()
class EveryoneWatchingModelData {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<EveryoneWatchingDataResult> results;

  EveryoneWatchingModelData({this.page, this.results = const []});

  factory EveryoneWatchingModelData.fromJson(Map<String, dynamic> json) {
    return _$EveryoneWatchingModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryoneWatchingModelDataToJson(this);
}

@JsonSerializable()
class EveryoneWatchingDataResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'first_air_date')
  String? firstAirDate;

  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'origin_country')
  List<String>? originCountry;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'popularity')
  double? popularity;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'vote_average')
  double? voteAverage;

  @JsonKey(name: 'vote_count')
  int? voteCount;

  EveryoneWatchingDataResult({
    this.backdropPath,
    this.firstAirDate,
    this.genreIds,
    this.id,
    this.name,
    this.originCountry,
    this.originalLanguage,
    this.overview,
    this.popularity,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
  });

  factory EveryoneWatchingDataResult.fromJson(Map<String, dynamic> json) {
    return _$EveryoneWatchingDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryoneWatchingDataResultToJson(this);
}
