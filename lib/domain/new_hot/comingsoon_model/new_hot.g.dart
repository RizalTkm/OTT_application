// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingSoonModelData _$ComingSoonModelDataFromJson(Map<String, dynamic> json) =>
    ComingSoonModelData(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  ComingSoonDataResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ComingSoonModelDataToJson(
        ComingSoonModelData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

ComingSoonDataResult _$ComingSoonDataResultFromJson(
        Map<String, dynamic> json) =>
    ComingSoonDataResult(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$ComingSoonDataResultToJson(
        ComingSoonDataResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
