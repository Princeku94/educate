import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  VideoPlayerController? controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(
        'https://media.geeksforgeeks.org/wp-content/uploads/20230924220731/video.mp4');

    controller!.initialize();

    controller!.play();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: controller!.value.aspectRatio,
      child: VideoPlayer(controller!),
    );
  }

  @override
  void dispose() {
    super.dispose();

    controller!.dispose();
  }
}
