import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slive/model/feed.dart';
import 'package:slive/screens_test/tiktok_font_demo.dart';

class FeedDescription extends StatelessWidget {
  const FeedDescription({super.key, required this.feedData});
  final FeedData feedData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 3,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            feedData.userCreate.displayName,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: TiktokFont),
          ),
          SizedBox(
            height: 10,
          ),
          ExpandableText(feedData.postData.content,
              expandText: "Xem thêm",
              maxLines: 2,
              collapseText: "Ẩn",
              linkColor: Colors.white,
              style: TextStyle(
                color: Colors.white,
                fontFamily: TiktokFont,
              )),
          // Text(
          //   feedData.postData.content,
          //   style: TextStyle(color: Colors.white, fontFamily: TiktokFont),
          // ),
        ]),
      ),
    );
  }
}
