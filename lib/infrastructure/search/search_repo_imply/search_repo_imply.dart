import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/domain/search/search_model/search_model.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_application/domain/search/search_repository/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepoImply implements SearchRepository {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies(
      {required String moviequery}) async {
    try {
      final response = await Dio().get(ApiEndPoints.searchEndpoint,
          queryParameters: {'query': moviequery});

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = SearchResponse.fromJson(response.data);

        // log(response.data.toString());
        return Right(responsedata);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
