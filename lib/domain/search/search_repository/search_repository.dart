import 'package:dartz/dartz.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/search/search_model/search_model.dart';

abstract class SearchRepository {
  Future<Either<MainFailure, SearchResponse>> searchMovies(
      {required String moviequery});
}
