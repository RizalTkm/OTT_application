import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/application/downloads/downloads_bloc.dart';

import 'package:movie_application/constants/fonts/grey_font.dart';
import 'package:movie_application/constants/fonts/mediumsized_font.dart';
import 'package:movie_application/constants/fonts/normal_font.dart';

import 'package:movie_application/constants/spaces.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/presentation/downloads/widgets/appbar_widget.dart';
import 'package:movie_application/presentation/downloads/widgets/stacked_image.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context).add(GetDownloadImages());
    });
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppbarWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                  NormalText(label: 'Smart downloads'),
                ],
              ),
              Spaces.kheight20,
              Spaces.kheight20,
              const MediumSIzedFont(
                label: 'Introducing Downloads for you',
              ),
              Spaces.kheight20,
              const GreyFont(
                  label:
                      "We'ill download a personalised selection of  \n movies and shows for you, so there's\nalways something to watch on your\ndevice"),
              Spaces.kheight10,
              Container(
                height: 350,
                width: 350,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 135,
                      backgroundColor: Colors.grey.withOpacity(.5),
                    ),
                    BlocBuilder<DownloadsBloc, DownloadsState>(
                      builder: (context, state) {
                        final list = state.downloadimages;

                        if (state.isloading) {
                          return const Center(
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          );
                        } else if (state.iserror) {
                          return const Center(
                            child: Text('Error on loading data'),
                          );
                        }
                        return StackedImagesWidget(
                          firstimageurl: list.isEmpty
                              ? ''
                              : '$imageappendurl${list[1].backdropPath}',
                          secondimageurl: list.isEmpty
                              ? ''
                              : '$imageappendurl${list[2].backdropPath}',
                          thirdimageurl: list.isEmpty
                              ? ''
                              : '$imageappendurl${list[3].backdropPath}',
                        );
                      },
                    )
                  ],
                ),
              ),
              Spaces.kheight10,
              Container(
                height: 40,
                width: 300,
                child: ElevatedButton(onPressed: () {}, child: Text('Set Up')),
              ),
              Spaces.kheight20,
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                height: 40,
                width: 250,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See What You Can Download',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ));
  }
}
