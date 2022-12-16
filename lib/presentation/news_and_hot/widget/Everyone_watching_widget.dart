import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:movie_application/constants/fonts/mediumsized_font.dart';

import 'package:movie_application/constants/spaces.dart';
import 'package:movie_application/core/api_end_points.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const GetHotAndNewTvData());
    });
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(3.0),
            child: RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<HotAndNewBloc>(context)
                    .add(const GetHotAndNewTvData());
              },
              child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
                builder: (context, state) {
                  if (state.isloading) {
                    return const Center(
                        child: CircularProgressIndicator(strokeWidth: 2));
                  } else if (state.isError) {
                    return const Center(
                        child: Text('Error while getting data'));
                  } else if (state.everyoneWatchingList.isEmpty) {
                    return const Center(child: Text('Data is empty'));
                  } else {
                    return ListView.separated(
                      separatorBuilder: (context, index) => Spaces.kheight10,
                      itemCount: state.everyoneWatchingList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final tvdata = state.everyoneWatchingList[index];
                        final backDropPath = tvdata.backdropPath;

                        return EveryoneWatchingMainCard(
                          imageurl: '$imageappendurl$backDropPath',
                          movieTitle: '${tvdata.name}',
                          overview: '${tvdata.overview}',
                        );
                      },
                    );
                  }
                },
              ),
            )));
  }
}

class EveryoneWatchingMainCard extends StatelessWidget {
  final String imageurl;
  final String movieTitle;
  final String overview;
  const EveryoneWatchingMainCard({
    Key? key,
    required this.imageurl,
    required this.movieTitle,
    required this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spaces.kheight10,
        MediumSIzedFont(label: movieTitle),
        Spaces.kheight10,
        Text(
          overview,
          style: const TextStyle(
            color: Colors.grey,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        Spaces.kheight20,
        Container(
          height: 220,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Image.network(
            imageurl,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return const Center(
                    child: CircularProgressIndicator(strokeWidth: 2));
              }
            },
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                  child: Icon(
                Icons.error,
                color: Colors.white,
              ));
            },
          ),
        )
      ],
    );
  }
}
