import 'package:dartz/dartz.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/new_hot/comingsoon_model/new_hot.dart';
import 'package:movie_application/domain/new_hot/everyone_watching_model/everyone_watching_model.dart';

abstract class HotAndNewRepository {
  Future<Either<MainFailure, ComingSoonModelData>> getHotAndNewMovieData();
  Future<Either<MainFailure, EveryoneWatchingModelData>> getHotAndNewTvData();
}
