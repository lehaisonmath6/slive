import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/tab_navigation/tab_navigation_bloc.dart';
import 'package:slive/widgets/feed_page_view.dart';

class TabFeedScreen extends StatefulWidget {
  final TabController tabController;
  const TabFeedScreen({super.key, required this.tabController});

  @override
  State<TabFeedScreen> createState() => _TabFeedScreenState();
}

class _TabFeedScreenState extends State<TabFeedScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var initTopBarNav =
        BlocProvider.of<TabNavigationBloc>(context).state.topBarNav;
    switch (initTopBarNav) {
      case TopBarNav.following:
        widget.tabController.index = 0;
        break;
      case TopBarNav.forYou:
        widget.tabController.index = 1;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx < 0) {
          if (widget.tabController.index >= 1) {
            print("Navigation to profile screens");
          }
        }
      },
      child: TabBarView(controller: widget.tabController, children: [
        FeedPageView(),
        FeedPageView(),
      ]),
    );
  }
}
