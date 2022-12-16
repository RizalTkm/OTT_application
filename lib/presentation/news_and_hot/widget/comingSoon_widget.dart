import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:movie_application/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:movie_application/constants/fonts/grey_font.dart';
import 'package:movie_application/constants/fonts/mediumsized_font.dart';

import 'package:movie_application/constants/spaces.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/presentation/news_and_hot/widget/iconButton_small.dart';
import 'package:text_scroll/text_scroll.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const GetHotAndNewMovieData());
    });
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(3.0),
      child: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<HotAndNewBloc>(context)
              .add(const GetHotAndNewMovieData());
        },
        child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
          builder: (context, state) {
            if (state.isloading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.isError) {
              return const Center(child: Text('Error while  getting data'));
            } else if (state.comingSoondataList.isEmpty) {
              return const Center(child: Text('Data is empty'));
            } else {
              return ListView.separated(
                separatorBuilder: (context, index) => Spaces.kheight20,
                itemCount: state.comingSoondataList.length,
                itemBuilder: (context, index) {
                  final movieListData = state.comingSoondataList[index];
                  final backDropImage = movieListData.backdropPath;
                  final movietitle = movieListData.title;
                  final movieDescription = movieListData.overview;

                  final releasedate =
                      state.comingSoondataList[index].releaseDate;
                  final parseddate = DateTime.parse(releasedate.toString());
                  final formatedDate =
                      DateFormat.yMMMMd('en_US').format(parseddate);
                  final weekday = DateFormat('EEEE').format(parseddate);
                  final finalreleasedDate = formatedDate.split(',');
                  final releasedMonth = finalreleasedDate.first.substring(0, 3);
                  final releasedDay = finalreleasedDate.first.split(' ')[1];

                  return ComingSoonMainCArd(
                    imageurl: '$imageappendurl$backDropImage',
                    releaseMonth: releasedMonth,
                    releasedate: releasedDay,
                    weekday: weekday,
                    movietitle: movietitle.toString(),
                    overview: movieDescription.toString(),
                  );
                },
              );
            }
          },
        ),
      ),
    ));
  }
}

class ComingSoonMainCArd extends StatelessWidget {
  final String imageurl;
  final String releaseMonth;
  final String releasedate;
  final String weekday;
  final String movietitle;
  final String overview;

  const ComingSoonMainCArd(
      {Key? key,
      required this.imageurl,
      required this.releaseMonth,
      required this.releasedate,
      required this.weekday,
      required this.movietitle,
      required this.overview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 480,
            width: 50,
            child: Column(
              children: [
                GreyFont(label: releaseMonth),
                MediumSIzedFont(label: releasedate)
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imageurl), fit: BoxFit.cover)),
                ),
                Spaces.kheight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextScroll(
                        '$movietitle                ',
                        style: GoogleFonts.abel(
                            fontSize: 35, fontWeight: FontWeight.bold),
                        pauseBetween: const Duration(milliseconds: 500),
                        velocity:
                            const Velocity(pixelsPerSecond: Offset(40, 0)),
                      ),
                    ),
                    Spaces.kWidth10,
                    IconButtonSmallWidget(
                      icon: Icons.alarm,
                      ontap: () {},
                      label: 'Remind Me',
                    ),
                    Spaces.kWidth20,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: IconButtonSmallWidget(
                        icon: Icons.info,
                        ontap: () {},
                        label: 'Info',
                      ),
                    )
                  ],
                ),
                Spaces.kheight20,
                Row(
                  children: [
                    Text(
                      'Coming on $weekday',
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                  ],
                ),
                Spaces.kheight10,
                Text(
                  overview,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                  softWrap: false,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
