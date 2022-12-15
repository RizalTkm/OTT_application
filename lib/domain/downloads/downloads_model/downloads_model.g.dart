// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadsModelData _$DownloadsModelDataFromJson(Map<String, dynamic> json) =>
    DownloadsModelData(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => DownloadsResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DownloadsModelDataToJson(DownloadsModelData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

DownloadsResult _$DownloadsResultFromJson(Map<String, dynamic> json) =>
    DownloadsResult(
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
      posterPath: json['poster_path'] as String?,
      moviename: json['name'] as String?,
    );

Map<String, dynamic> _$DownloadsResultToJson(DownloadsResult instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'name': instance.moviename,
    };
