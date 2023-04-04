import 'package:slive/model/post.dart';
import 'package:slive/model/user.dart';
import 'package:video_player/video_player.dart';

class FeedData {
  final Post postData;
  final UserFeed userCreate;
  final int totalLike;
  final int totalComment;
  final int totalSave;
  final int totalShare;
  VideoPlayerController? videoPlayerController;

  FeedData.zero()
      : postData = const Post(id: 0, content: "", videoUrl: "", createTime: 0),
        userCreate =
            const UserFeed(id: 0, avatar: "", displayName: "", isFollow: false),
        totalLike = 0,
        totalComment = 0,
        totalShare = 0,
        totalSave = 0;

  FeedData(
      {required this.postData,
      required this.userCreate,
      required this.totalLike,
      required this.totalComment,
      required this.totalShare,
      required this.totalSave,
      this.videoPlayerController});
}
