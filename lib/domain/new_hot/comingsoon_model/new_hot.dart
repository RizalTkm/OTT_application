import 'package:json_annotation/json_annotation.dart';

part 'new_hot.g.dart';

@JsonSerializable()
class ComingSoonModelData {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<ComingSoonDataResult> results;

  ComingSoonModelData({this.page, this.results = const []});

  factory ComingSoonModelData.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonModelDataToJson(this);
}

@JsonSerializable()
class ComingSoonDataResult {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'popularity')
  double? popularity;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'vote_average')
  double? voteAverage;

  @JsonKey(name: 'vote_count')
  int? voteCount;

  ComingSoonDataResult({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

  factory ComingSoonDataResult.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonDataResultToJson(this);
}
