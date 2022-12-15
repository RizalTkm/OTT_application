import 'package:get/get.dart';
import 'package:movie_application/constants/page_routes.dart';
import 'package:movie_application/presentation/main_page/main_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3), () => Get.off(MainPage()));
  }
}
