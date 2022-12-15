import 'dart:developer';
// import 'dart:math';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/domain/downloads/downloads_model/downloads_model.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_application/domain/downloads/repository/downloads_repository.dart';

@LazySingleton(as: DownloadsRepository)
class DownloadsRepoImply implements DownloadsRepository {
  @override
  Future<Either<MainFailure, DownloadsModelData>> getdownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsEndPoint);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = DownloadsModelData.fromJson(response.data);

        // log(downloadsList.toString());
        // log(response.data['results'].toString());

        log(downloadsList.results.toString());
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
