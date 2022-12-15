import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/application/search/search_bloc.dart';
import 'package:movie_application/constants/fonts/mediumsized_font.dart';

import 'package:movie_application/constants/image_urls.dart';

import 'package:movie_application/constants/spaces.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/domain/core/debouncer/debouncer.dart';
import 'package:movie_application/presentation/downloads/widgets/stacked_image.dart';
import 'package:movie_application/presentation/search/widgets/maincard.dart';
import 'package:movie_application/presentation/search/widgets/movie_container.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _debouncer = Debouncer(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(initialize());
    });
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.45),
                  borderRadius: BorderRadius.circular(10)),
              child: CupertinoSearchTextField(
                padding: EdgeInsets.all(15),
                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  } else {
                    _debouncer.run(() {
                      BlocProvider.of<SearchBloc>(context)
                          .add(searchMovies(moviename: value));
                    });
                  }
                },
              ),
            ),
            Spaces.kheight10,
            //Expanded(child: TopSearchesWidget()),
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.iserror) {
                  return const Center(child: Text('Error while loading data'));
                } else if (state.isloading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  );
                }
                if (state.searchResultList.isEmpty) {
                  return const TopSearchesWidget();
                } else {
                  return const MoviesAndTvWidget();
                }
              },
            ))
          ],
        ),
      )),
    );
  }
}

class TopSearchesWidget extends StatelessWidget {
  const TopSearchesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MediumSIzedFont(label: 'Top Searches'),
      Expanded(child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          final list = state.downloadResultList;
          return ListView.separated(
            separatorBuilder: (context, index) => Spaces.kheight10,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return MovieContainer(
                imageurl: '$imageappendurl${list[index].backdropPath}',
                movieTitle: list[index].title == null
                    ? '${list[index].moviename}'
                    : '${list[index].title}',
              );
            },
          );
        },
      )),
    ]);
  }
}

class MoviesAndTvWidget extends StatelessWidget {
  const MoviesAndTvWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MediumSIzedFont(label: 'Movies & TV'),
        Expanded(child:
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          final image = state.searchResultList;

          return GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.2 / 1.6,
            shrinkWrap: true,
            children: List.generate(
                state.searchResultList.length,
                (index) => MainCard(
                      imageurl: '$imageappendurl${image[index].posterPath}',
                    )),
          );
        }))
      ],
    );
  }
}
