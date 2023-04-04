import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slive/mock/demo_data.dart';
import 'package:slive/model/feed.dart';
import 'package:slive/screens_test/tiktok_font_demo.dart';
import 'package:slive/utlis/utils.dart';
import 'package:slive/widgets/circle_image_rotation.dart';

const ActionIconSize = 35.0;
var ActionIconColor = Colors.white.withOpacity(1);
const ActionTextStyle = TextStyle(color: Colors.white, fontFamily: TiktokFont);

class ActionBar extends StatelessWidget {
  const ActionBar({super.key, required this.feedData});
  final FeedData feedData;
  Widget avatarButton() {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CircleAvatar(
                  // radius: 30,
                  backgroundImage: NetworkImage(feedData.userCreate.avatar)),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: 20,
                height: 20,
                child: RawMaterialButton(
                  onPressed: () {},
                  // elevation: 2.0,
                  fillColor: Colors.red,
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                  // padding: EdgeInsets.all(8.0),
                  shape: CircleBorder(),
                ),
              ),
            ),
          ]),
    );
  }

  Widget likeButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: ActionIconColor,
            size: ActionIconSize,
          ),
          splashColor: Colors.transparent,
        ),
        Text(
          "${likeCount(feedData.totalLike)}",
          style: ActionTextStyle,
        )
      ],
    );
  }

  Widget commentButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.comment,
            color: ActionIconColor,
            size: ActionIconSize,
          ),
          splashColor: Colors.transparent,
        ),
        Text(
          "${feedData.totalComment}",
          style: ActionTextStyle,
        )
      ],
    );
  }

  Widget bookmarkButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark,
            color: ActionIconColor,
            size: ActionIconSize,
          ),
          splashColor: Colors.transparent,
        ),
        Text(
          "${feedData.totalSave}",
          style: ActionTextStyle,
        )
      ],
    );
  }

  Widget shareButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.reply,
            color: ActionIconColor,
            size: ActionIconSize,
          ),
          splashColor: Colors.transparent,
        ),
        Text(
          "${feedData.totalShare}",
          style: ActionTextStyle,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          avatarButton(),
          likeButton(),
          commentButton(),
          bookmarkButton(),
          shareButton(),
          CircleImageRotation(imageUrl: lsFeeds[0].userCreate.avatar)
        ],
      ),
    );
  }
}
