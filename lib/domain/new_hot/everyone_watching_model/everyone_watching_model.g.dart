// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyone_watching_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryoneWatchingModelData _$EveryoneWatchingModelDataFromJson(
        Map<String, dynamic> json) =>
    EveryoneWatchingModelData(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => EveryoneWatchingDataResult.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EveryoneWatchingModelDataToJson(
        EveryoneWatchingModelData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

EveryoneWatchingDataResult _$EveryoneWatchingDataResultFromJson(
        Map<String, dynamic> json) =>
    EveryoneWatchingDataResult(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
      originCountry: (json['origin_country'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalLanguage: json['original_language'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$EveryoneWatchingDataResultToJson(
        EveryoneWatchingDataResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'name': instance.name,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
