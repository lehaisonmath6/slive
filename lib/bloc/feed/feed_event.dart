part of 'feed_bloc.dart';

abstract class FeedEvent extends Equatable {
  const FeedEvent();
  @override
  List<Object> get props => [];
}

class FeedEventFetch extends FeedEvent {
  final int currentOffset;
  final int? fetchSize;
  const FeedEventFetch({required this.currentOffset, this.fetchSize});
}

class FeedEventSetCurrentFeed extends FeedEvent {
  final int id;
  const FeedEventSetCurrentFeed(this.id);
}

class FeedEventChangeFeedStatus extends FeedEvent {
  final bool isPlaying;
  const FeedEventChangeFeedStatus(this.isPlaying);
}

class FeedEventChangePageView extends FeedEvent {
  final int pageIndex;
  const FeedEventChangePageView(this.pageIndex);
}
