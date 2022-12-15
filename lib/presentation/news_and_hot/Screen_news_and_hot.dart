import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:movie_application/constants/fonts/standard_font.dart';
import 'package:movie_application/presentation/news_and_hot/widget/Everyone_watching_widget.dart';
import 'package:movie_application/presentation/news_and_hot/widget/comingSoon_widget.dart';

class NewsAndHotScreen extends StatelessWidget {
  const NewsAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<HotAndNewBloc>(context)
    //       .add(const GetHotAndNewMovieData());
    //   // BlocProvider.of<HotAndNewBloc>(context).add(const GetHotAndNewTvData());
    // });

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: AppBar(
                  backgroundColor: Colors.black,
                  title: const StandardFont(label: 'New & Hot'),
                  actions: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.square,
                          color: Colors.blue,
                        ))
                  ],
                  bottom: TabBar(
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      tabs: const [
                        Tab(
                          text: '🍿Coming Soon',
                        ),
                        Tab(
                          text: "👀 EveryOne's Watching",
                        )
                      ]))),
          body: const TabBarView(
              children: [ComingSoonWidget(), EveryOneWatchingWidget()])),
    );
  }
}
