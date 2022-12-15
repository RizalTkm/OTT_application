import 'package:json_annotation/json_annotation.dart';

part 'downloads_model.g.dart';

@JsonSerializable()
class DownloadsModelData {
  //model
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<DownloadsResult> results;

  DownloadsModelData({this.page, this.results = const []});

  factory DownloadsModelData.fromJson(Map<String, dynamic> json) {
    return _$DownloadsModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsModelDataToJson(this);
}

@JsonSerializable()
class DownloadsResult {
  //model
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'title')
  String? title;

  // @JsonKey(name: 'original_language')
  // String? originalLanguage;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'name')
  String? moviename;

  // @JsonKey(name: 'vote_average')
  // double? voteAverage;

  // @JsonKey(name: 'vote_count')
  // int? voteCount;

  DownloadsResult(
      {this.backdropPath, this.title, this.posterPath, this.moviename});

  factory DownloadsResult.fromJson(Map<String, dynamic> json) {
    return _$DownloadsResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsResultToJson(this);
}
