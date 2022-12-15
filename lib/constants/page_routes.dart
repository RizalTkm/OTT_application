import 'package:get/get.dart';
import 'package:movie_application/presentation/main_page/main_page.dart';
import 'package:movie_application/presentation/screen_splash/screen_splash.dart';
import 'package:movie_application/presentation/screen_splash/splash_bindings.dart';

class PageNames {
  static const splashpage = '/spalsh';
  static const mainpage = '/main page';
}

class Pageroutes {
  static final pages = [
    GetPage(
        name: PageNames.splashpage,
        page: () => SplashScreen(),
        binding: splashBindings()),
    GetPage(name: PageNames.mainpage, page: () => MainPage())
  ];
}
