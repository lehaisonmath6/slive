part of 'feed_bloc.dart';

class FeedState extends Equatable {
  final int preLoadOffset;
  final List<FeedData> listFeedData;
  final FeedData currentFeed;
  final bool isFeedPlaying;
  final int currentOffset;
  final int fetchSize;
  const FeedState(
      {required this.listFeedData,
      required this.currentOffset,
      required this.fetchSize,
      required this.preLoadOffset,
      required this.currentFeed,
      required this.isFeedPlaying});
  FeedState copyWith(
      {int? preLoadOffset,
      List<FeedData>? listFeedData,
      int? currentOffset,
      int? currentPlayFeedId,
      int? fetchSize,
      bool? isFeedPlaying,
      FeedData? currentFeed}) {
    return FeedState(
        isFeedPlaying: isFeedPlaying ?? this.isFeedPlaying,
        listFeedData: listFeedData ?? this.listFeedData,
        currentOffset: currentOffset ?? this.currentOffset,
        fetchSize: fetchSize ?? this.fetchSize,
        currentFeed: currentFeed ?? this.currentFeed,
        preLoadOffset: preLoadOffset ?? this.preLoadOffset);
  }

  @override
  List<Object> get props => [
        preLoadOffset,
        listFeedData,
        currentOffset,
        fetchSize,
        currentFeed,
        isFeedPlaying
      ];
}

class FeedInitial extends FeedState {
  FeedInitial()
      : super(
            currentOffset: 0,
            fetchSize: 10,
            listFeedData: [],
            preLoadOffset: 1,
            currentFeed: FeedData.zero(),
            isFeedPlaying: false);
}
