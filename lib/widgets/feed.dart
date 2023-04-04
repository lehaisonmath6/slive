import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/feed/feed_bloc.dart';
import 'package:slive/model/feed.dart';
import 'package:slive/widgets/action_bar.dart';
import 'package:slive/widgets/feed_description.dart';
import 'package:video_player/video_player.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.currentFeed.postData.videoUrl == "") {
          return Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            child: const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          );
        }

        return GestureDetector(
          onTap: () {
            if (state.currentFeed.videoPlayerController!.value.isPlaying) {
              state.currentFeed.videoPlayerController!.pause();
              BlocProvider.of<FeedBloc>(context)
                  .add(const FeedEventChangeFeedStatus(false));
            } else {
              state.currentFeed.videoPlayerController!.play();
              BlocProvider.of<FeedBloc>(context)
                  .add(const FeedEventChangeFeedStatus(true));
            }
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: state
                      .currentFeed.videoPlayerController!.value.aspectRatio,
                  child: VideoPlayer(state.currentFeed.videoPlayerController!),
                ),
                if (!state.currentFeed.videoPlayerController!.value.isPlaying)
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white.withOpacity(0.8),
                      size: 25,
                    ),
                  ),
                Positioned(
                  left: 0,
                  bottom: 30,
                  child: FeedDescription(feedData: state.currentFeed),
                ),
                Positioned(
                    right: 0,
                    bottom: 30,
                    child: ActionBar(
                      feedData: state.currentFeed,
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
