import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_application/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.init(environment: Environment.prod);
}
