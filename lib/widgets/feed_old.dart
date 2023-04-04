// import 'package:flutter/material.dart';
// import 'package:slive/mock/demo_data.dart';
// import 'package:slive/model/feed.dart';
// import 'package:slive/widgets/action_bar.dart';
// import 'package:slive/widgets/feed_description.dart';
// import 'package:slive/widgets/similar_search_content.dart';

// import 'package:smooth_video_progress/smooth_video_progress.dart';
// import 'package:video_player/video_player.dart';

// class Feed extends StatefulWidget {
//   final FeedData feedData;
//   final VideoPlayerController videoPlayerController;
//   const Feed(
//       {super.key, required this.feedData, required this.videoPlayerController});

//   @override
//   State<Feed> createState() => _FeedState();
// }

// class _FeedState extends State<Feed> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     widget.videoPlayerController.setLooping(true);
//     if (!widget.videoPlayerController.value.isInitialized) {
//       widget.videoPlayerController.initialize().then((_) {
//         setState(() {});
//       });
//     }
//   }

//   @override
//   void dispose() {
//     videoPlayerController.dispose();

//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         GestureDetector(
//           onTap: () {
//             if (videoPlayerController.value.isPlaying) {
//               videoPlayerController.pause();
//               setState(() {});
//             } else {
//               videoPlayerController.play();
//               setState(() {});
//             }
//           },
//           child: Center(
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 AspectRatio(
//                   aspectRatio: videoPlayerController.value.aspectRatio,
//                   child: VideoPlayer(videoPlayerController),
//                   // width: videoPlayerController.value.size.width,
//                   // height: videoPlayerController.value.size.height,
//                 ),
//                 if (videoPlayerController.value.isPlaying == false)
//                   CircleAvatar(
//                     backgroundColor: Colors.transparent,
//                     child: Icon(
//                       Icons.play_arrow,
//                       color: Colors.white,
//                     ),
//                   )
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//             bottom: 0,
//             left: 0,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 FeedDescription(
//                   feedData: lsFeeds[0],
//                 ),
//                 SimilarSearchContent(),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: SmoothVideoProgress(
//                       controller: videoPlayerController,
//                       builder: (context, position, duration, child) =>
//                           SliderTheme(
//                             data: SliderThemeData(
//                               thumbColor: Colors.grey,
//                               activeTrackColor: Colors.grey,
//                               trackHeight: 1,
//                               thumbShape: RoundSliderThumbShape(
//                                   enabledThumbRadius: 2.0),
//                               overlayShape:
//                                   RoundSliderOverlayShape(overlayRadius: 5.0),
//                             ),
//                             child: Slider(
//                               onChangeStart: (_) =>
//                                   videoPlayerController.pause(),
//                               onChangeEnd: (_) => videoPlayerController.play(),
//                               onChanged: (value) =>
//                                   videoPlayerController.seekTo(
//                                       Duration(milliseconds: value.toInt())),
//                               value: position.inMilliseconds.toDouble(),
//                               min: 0,
//                               max: duration.inMilliseconds.toDouble(),
//                             ),
//                           )),
//                 )
//               ],
//             )),
//         Positioned(
//           child: ActionBar(feedData: lsFeeds[0]),
//           right: 0,
//           bottom: 30,
//         ),
//       ],
//     );
//   }
// }
