import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slive/constans/tiktok_font.dart';

const TiktokTextTabStyle = TextStyle(
    fontFamily: tikTokFontFamily, fontSize: 15, fontWeight: FontWeight.bold);

class TopBar extends StatelessWidget {
  final TabController tabController;
  const TopBar({super.key, required this.tabController});

  Widget get liveButton => IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.live_tv_sharp,
        color: Colors.white,
      ));

  Widget get searchButton => IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ));

  Widget tabBar(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 3 / 4,
      child: TabBar(
        enableFeedback: false,
        labelColor: Colors.white,
        indicatorColor: Colors.white,
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3.0, color: Colors.white),
          borderRadius: BorderRadius.circular(7.0),
          insets: EdgeInsets.symmetric(horizontal: 30, vertical: -5),
        ),
        controller: tabController,
        tabs: [
          Text(
            "Đang Follow",
            style: TiktokTextTabStyle,
          ),
          Text(
            "Dành cho bạn",
            style: TiktokTextTabStyle,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [liveButton, tabBar(context), searchButton],
      ),
    );
  }
}
