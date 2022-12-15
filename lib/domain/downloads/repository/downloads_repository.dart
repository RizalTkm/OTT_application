import 'package:dartz/dartz.dart';
import 'package:movie_application/domain/core/failures/mainfailure.dart';
import 'package:movie_application/domain/downloads/downloads_model/downloads_model.dart';

abstract class DownloadsRepository {
  Future<Either<MainFailure, DownloadsModelData>> getdownloadsImages();
}
