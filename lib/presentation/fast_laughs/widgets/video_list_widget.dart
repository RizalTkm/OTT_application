import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_application/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:movie_application/constants/spaces.dart';
import 'package:movie_application/core/api_end_points.dart';
import 'package:share_plus/share_plus.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatelessWidget {
  VideoListItem(
      {super.key,
      required this.index,
      required this.imageurl,
      required this.label});

  int index;
  final String imageurl;
  final String label;

  final ValueNotifier<Set> likedvideoNotifier = ValueNotifier({});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      VideoPlayerWIdget(
          videoUrl: videoUrls[index % videoUrls.length],
          onstatechanged: (_) {}),
      Align(
        alignment: Alignment.bottomRight,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BlocBuilder<FastLaughBloc, FastLaughState>(
              builder: (context, state) {
                final moviename = state.vidoeListimage[index].title;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CIrcleAvatarWidget(
                      label: label,
                      imageurl: imageurl,
                    ),
                    Spaces.kheight20,
                    ValueListenableBuilder(
                        valueListenable: likedvideoNotifier,
                        builder: (c, newlikedIds, _) {
                          if (newlikedIds.contains(index)) {
                            return VideoIconWidget(
                              icon: Icons.emoji_emotions,
                              label: 'Liked',
                              ontap: () {
                                newlikedIds.remove(index);
                                likedvideoNotifier.notifyListeners();
                              },
                              iconCOlor: Colors.red,
                            );
                          } else {
                            return VideoIconWidget(
                              icon: Icons.emoji_emotions,
                              label: 'LOL',
                              ontap: () {
                                newlikedIds.add(index);
                                likedvideoNotifier.notifyListeners();
                              },
                            );
                          }
                          ;
                        }),
                    Spaces.kheight20,
                    VideoIconWidget(
                      icon: Icons.add,
                      ontap: () {},
                      label: 'My List',
                    ),
                    Spaces.kheight20,
                    VideoIconWidget(
                      icon: Icons.share,
                      ontap: () {
                        Share.share(
                            'moviename : $moviename \n movieurl : ${videoUrls[index]}');
                      },
                      label: 'Share',
                    ),
                    Spaces.kheight20,
                    Spaces.kheight20,
                    Spaces.kheight20
                  ],
                );
              },
            )),
      )
    ]);
  }
}

class VideoIconWidget extends StatelessWidget {
  const VideoIconWidget(
      {super.key,
      required this.icon,
      this.label = '',
      required this.ontap,
      this.iconCOlor = Colors.black});

  final IconData icon;
  final String label;
  final VoidCallback ontap;
  final Color iconCOlor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Icon(
            icon,
            color: iconCOlor,
          ),
          Text(label)
        ],
      ),
    );
  }
}

class CIrcleAvatarWidget extends StatelessWidget {
  const CIrcleAvatarWidget(
      {super.key, required this.imageurl, required this.label});

  final String imageurl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(imageurl),
      ),
      Positioned(
        left: 5,
        top: 34.5,
        child: SizedBox(
          height: 30,
          width: 60,
          child: TextScroll(
            '$label    ',
            style: GoogleFonts.openSans(fontWeight: FontWeight.w900),
            velocity: const Velocity(pixelsPerSecond: Offset(30, 0)),
          ),
        ),
      )
    ]);
  }
}

class VideoPlayerWIdget extends StatefulWidget {
  const VideoPlayerWIdget(
      {super.key, required this.videoUrl, required this.onstatechanged});

  final String videoUrl;
  final void Function(bool isplaying) onstatechanged;

  @override
  State<VideoPlayerWIdget> createState() => _VideoPlayerWIdgetState();
}

class _VideoPlayerWIdgetState extends State<VideoPlayerWIdget> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    videoPlayerController.initialize().then((value) {
      setState(() {});
      videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController))
              : const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
        ),
        Positioned(
            bottom: 20,
            right: 24,
            child: videoPlayerController.value.isPlaying
                ? VideoIconWidget(
                    icon: Icons.pause,
                    ontap: () {
                      setState(() {
                        videoPlayerController.pause();
                      });
                    },
                    label: 'Pause',
                  )
                : VideoIconWidget(
                    icon: Icons.play_arrow,
                    ontap: () {
                      setState(() {
                        videoPlayerController.play();
                      });
                    },
                    label: 'Play',
                  )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 20),
              child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(.5),
                  child: videoPlayerController.value.volume != 0
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              videoPlayerController.setVolume(0);
                            });
                          },
                          child: const Icon(
                            Icons.volume_up,
                            size: 35,
                            color: Colors.white,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              videoPlayerController.setVolume(1);
                            });
                          },
                          child: const Icon(
                            Icons.volume_off_rounded,
                            size: 35,
                            color: Colors.white,
                          ),
                        )),
            )),
      ],
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }
}
