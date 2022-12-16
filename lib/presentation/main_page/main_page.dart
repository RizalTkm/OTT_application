import 'package:flutter/material.dart';
import 'package:movie_application/presentation/downloads/Screen_downloads.dart';
import 'package:movie_application/presentation/fast_laughs/Screen_fast_laughs.dart';
import 'package:movie_application/presentation/home/Screen_home.dart';
import 'package:movie_application/presentation/main_page/widgets/bottom_navigation_widget.dart';
import 'package:movie_application/presentation/news_and_hot/Screen_news_and_hot.dart';
import 'package:movie_application/presentation/search/Screen_search.dart';

final pages = [
  const HomeScreen(),
  const NewsAndHotScreen(),
  const FastLaughsScreen(),
  SearchScreen(),
  const DownloadsScreen()
];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: bottombarindexnotifier,
          builder: (BuildContext context, int newindex, _) {
            return pages[newindex];
          }),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
