import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:slive/mock/demo_data.dart';
import 'package:slive/model/feed.dart';
import 'package:video_player/video_player.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(FeedInitial()) {
    on<FeedEventFetch>((event, emit) async {
      var lsFeeds = await MockApi.fechFeeds(
          event.currentOffset, event.fetchSize ?? state.fetchSize);
      for (int i = 0; i < lsFeeds.length; i++) {
        lsFeeds[i].videoPlayerController =
            VideoPlayerController.network(lsFeeds[i].postData.videoUrl);
        lsFeeds[i].videoPlayerController!.initialize().then((value) {
          lsFeeds[i].videoPlayerController!.setLooping(true);
        });
      }
      state.listFeedData.addAll(lsFeeds);
      emit(state.copyWith(
        listFeedData: state.listFeedData,
      ));
      print("currentOffset ${state.currentOffset}");
      if (state.currentOffset == 0) {
        add(FeedEventSetCurrentFeed(state.listFeedData[0].postData.id));
        print("remove flutter navive splash");
        FlutterNativeSplash.remove();
      }
    });
    on<FeedEventSetCurrentFeed>(
      (event, emit) {
        // Stop and reset old current feed
        if (event.id != state.currentFeed.postData.id &&
            state.currentFeed.videoPlayerController != null) {
          state.currentFeed.videoPlayerController!.pause();
          state.currentFeed.videoPlayerController!.seekTo(Duration.zero);
        }

        // find current feed by id
        var feedDataIt = state.listFeedData
            .where((element) => element.postData.id == event.id);
        if (feedDataIt.isNotEmpty) {
          // feedDataIt.first.videoPlayerController!.play();
          feedDataIt.first.videoPlayerController!.play();
          emit(state.copyWith(
              currentFeed: feedDataIt.first, isFeedPlaying: true));

          // print("set first feed");
        }
      },
    );

    on<FeedEventChangeFeedStatus>(
      (event, emit) {
        // Stop and reset old current feed
        emit(state.copyWith(isFeedPlaying: event.isPlaying));
      },
    );

    on<FeedEventChangePageView>(
      (event, emit) {
        var feedData = state.listFeedData[event.pageIndex];
        add(FeedEventSetCurrentFeed(feedData.postData.id));
      },
    );
  }
}
