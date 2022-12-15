import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_application/application/downloads/downloads_bloc.dart';
import 'package:movie_application/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:movie_application/application/home/home_bloc.dart';
import 'package:movie_application/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:movie_application/application/search/search_bloc.dart';
import 'package:movie_application/constants/page_routes.dart';
import 'package:movie_application/domain/core/di/injectable.dart';
import 'package:movie_application/presentation/screen_splash/splash_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
        BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>())
      ],
      child: GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: PageNames.splashpage,
        initialBinding: splashBindings(),
        getPages: Pageroutes.pages,
      ),
    );
  }
}
