import 'package:get/get.dart';
import 'package:movie_application/presentation/screen_splash/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}
