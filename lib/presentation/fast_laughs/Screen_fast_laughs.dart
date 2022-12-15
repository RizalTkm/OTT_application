import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:movie_application/presentation/fast_laughs/widgets/video_list_widget.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(const initialize());
    });

    return Scaffold(
      body: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isloading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.iserror) {
            return Center(
              child: Text(
                  'Error on loading videos n\ Pleas check the internet connection'),
            );
          } else if (state.vidoeListimage.isEmpty) {
            Center(child: Text('Video List is empty'));
          }
          return PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(20, (index) {
              final image = state.vidoeListimage[index];

              return VideoListItem(
                index: index,
                imageurl: '$imageappendurl${image.posterPath}',
                label: image.title == null
                    ? '${image.moviename}'
                    : '${image.title}',
              );
            }),
          );
        },
      ),
    );
  }
}
