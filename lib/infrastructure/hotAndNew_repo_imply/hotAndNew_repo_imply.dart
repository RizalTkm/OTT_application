import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/domain/new_hot/everyone_watching_model/everyone_watching_model.dart';
import 'package:movie_application/domain/new_hot/comingsoon_model/new_hot.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_application/domain/new_hot/repository/hotandNew_repo.dart';

@LazySingleton(as: HotAndNewRepository)
class HotAndNewRepoImply implements HotAndNewRepository {
  @override
  Future<Either<MainFailure, ComingSoonModelData>>
      getHotAndNewMovieData() async {
    try {
      final response = await Dio().get(ApiEndPoints.hotAndNewMovieEndpoint);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = ComingSoonModelData.fromJson(response.data);

        // log('this is movie data $responseData');
        return Right(responseData);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, EveryoneWatchingModelData>>
      getHotAndNewTvData() async {
    try {
      final response = await Dio().get(ApiEndPoints.hotandNewTvEndpoint);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = EveryoneWatchingModelData.fromJson(response.data);

        // log('this is tv data $responsedata');
        return Right(responsedata);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
