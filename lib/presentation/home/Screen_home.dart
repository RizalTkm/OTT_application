import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/application/home/home_bloc.dart';
import 'package:movie_application/constants/fonts/mediumsized_font.dart';
import 'package:movie_application/constants/spaces.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/presentation/home/widgets/iconbuttonWidget.dart';
import 'package:movie_application/presentation/home/widgets/movie_card.dart';
import 'package:movie_application/presentation/home/widgets/textbutton.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const getHomeScreenData());
    });

    final screensize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: ValueListenableBuilder(
                valueListenable: scrollnotifier,
                builder: (BuildContext context, dynamic index, _) {
                  return NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;

                      if (direction == ScrollDirection.forward) {
                        scrollnotifier.value = true;
                      } else if (direction == ScrollDirection.reverse) {
                        scrollnotifier.value = false;
                      }

                      return true;
                    },
                    child: Stack(
                      children: [
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            final homeImageMain =
                                (state.homeMainImage).map((e) {
                              return '$imageappendurl${e.posterPath}';
                            }).toList();

                            final length = homeImageMain.length;

                            return SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(children: [
                                    SizedBox(
                                      height: 700,
                                      width: screensize.width,
                                      child: length == 0
                                          ? const Center(
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator(
                                              strokeWidth: 2,
                                            )))
                                          : Image.network(
                                              homeImageMain[0],
                                              loadingBuilder: (context, child,
                                                  loadingProgress) {
                                                if (loadingProgress == null) {
                                                  return child;
                                                } else {
                                                  return const Center(
                                                      child:
                                                          CircularProgressIndicator(
                                                    strokeWidth: 2,
                                                  ));
                                                }
                                              },
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                return const Center(
                                                    child: Icon(
                                                  Icons.error,
                                                  color: Colors.white,
                                                ));
                                              },
                                            ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 75,
                                      child: Row(
                                        children: [
                                          IconButtonWidget(
                                            icon: Icons.add,
                                            ontap: () {},
                                            label: 'My List',
                                          ),
                                          Spaces.kWidth20,
                                          Spaces.kWidth20,
                                          ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                              ),
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.play_arrow,
                                                color: Colors.black,
                                              ),
                                              label: const Text(
                                                'Play',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )),
                                          Spaces.kWidth20,
                                          Spaces.kWidth20,
                                          IconButtonWidget(
                                            icon: Icons.info,
                                            ontap: () {},
                                            label: 'Info',
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                                  Spaces.kheight20,
                                  const MediumSIzedFont(
                                      label: 'Released in the past year'),
                                  Spaces.kheight10,
                                  LimitedBox(
                                    maxHeight: 220,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Spaces.kWidth10,
                                      itemCount: state.releasedPYMovies.length,
                                      itemBuilder: (context, index) {
                                        final shuffledListImage = state
                                            .releasedPYMovies[index].posterPath;

                                        return MovieCard(
                                            imageurl:
                                                '$imageappendurl$shuffledListImage');
                                      },
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  Spaces.kheight20,
                                  const MediumSIzedFont(label: 'Trending Now'),
                                  Spaces.kheight10,
                                  LimitedBox(
                                    maxHeight: 220,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Spaces.kWidth10,
                                      itemCount: state.trendingNowMovies.length,
                                      itemBuilder: (context, index) {
                                        final shuffledListImage =
                                            (state.trendingNowMovies).map((e) {
                                          return e.posterPath;
                                        }).toList();
                                        return MovieCard(
                                            imageurl:
                                                '$imageappendurl${shuffledListImage[index]}');
                                      },
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  Spaces.kheight20,
                                  const MediumSIzedFont(
                                      label: 'Top 20 TV Shows in Inida Today'),
                                  Spaces.kheight10,
                                  LimitedBox(
                                    maxHeight: 220,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Spaces.kWidth20,
                                      itemCount: state.topTenTvshows.length,
                                      itemBuilder: (context, index) {
                                        final toptenListImage = state
                                            .topTenTvshows[index].posterPath;
                                        return StackedNUmberCard(
                                            imageurl:
                                                '$imageappendurl$toptenListImage',
                                            index: index + 1);
                                      },
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  Spaces.kheight20,
                                  const MediumSIzedFont(label: 'Tense Dramas'),
                                  Spaces.kheight10,
                                  LimitedBox(
                                    maxHeight: 220,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Spaces.kWidth10,
                                      itemCount: state.tenseDaramas.length,
                                      itemBuilder: (context, index) {
                                        final tensedramaListImage = state
                                            .tenseDaramas[index].posterPath;

                                        return MovieCard(
                                            imageurl:
                                                '$imageappendurl$tensedramaListImage');
                                      },
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  Spaces.kheight20,
                                  const MediumSIzedFont(
                                      label: 'South Indian Cinema'),
                                  Spaces.kheight10,
                                  LimitedBox(
                                    maxHeight: 220,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Spaces.kWidth10,
                                      itemCount: state.southIndianCinema.length,
                                      itemBuilder: (context, index) {
                                        final southIndianListImage = state
                                            .southIndianCinema[index]
                                            .posterPath;
                                        return MovieCard(
                                            imageurl:
                                                '$imageappendurl$southIndianListImage');
                                      },
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        scrollnotifier.value == true
                            ? AnimatedContainer(
                                duration: const Duration(microseconds: 1000),
                                height: 120,
                                color: Colors.black.withOpacity(.3),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                              radius: 30,
                                              child: ClipOval(
                                                  child: Image.asset(
                                                      'assets/logos/play_store_512.png'))),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.cast,
                                              color: Colors.white,
                                              size: 30,
                                            )),
                                        Spaces.kWidth10,
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.square,
                                              color: Colors.blue,
                                              size: 30,
                                            ))
                                      ],
                                    ),
                                    Spaces.kheight10,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomTextbutton(
                                            label: 'TV Shows', ontap: () {}),
                                        Spaces.kWidth20,
                                        Spaces.kWidth10,
                                        CustomTextbutton(
                                            label: 'Movies', ontap: () {}),
                                        Spaces.kWidth20,
                                        Spaces.kWidth10,
                                        CustomTextbutton(
                                            label: 'Categories', ontap: () {})
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Spaces.kheight20
                      ],
                    ),
                  );
                })));
  }
}

class StackedNUmberCard extends StatelessWidget {
  const StackedNUmberCard(
      {super.key, required this.imageurl, required this.index});

  final String imageurl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Row(
        children: [
          const SizedBox(
            width: 30,
            height: 210,
          ),
          Container(
              height: 220,
              width: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageurl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5))),
        ],
      ),
      Positioned(
          top: 130,
          right: 120,
          child: BorderedText(
              strokeWidth: 8,
              strokeColor: Colors.white,
              child: Text(
                '$index',
                style: const TextStyle(fontSize: 90, color: Colors.black),
              )))
    ]);
  }
}
