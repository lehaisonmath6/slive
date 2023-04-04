import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/tab_navigation/tab_navigation_bloc.dart';
import 'package:slive/screens/tab_feed_screen.dart';
import 'package:slive/widgets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      var topBarNav = TopBarNav.forYou;
      switch (tabController.index) {
        case 0:
          topBarNav = TopBarNav.following;
          break;
        case 1:
          topBarNav = TopBarNav.forYou;
          break;
        default:
      }
      BlocProvider.of<TabNavigationBloc>(context)
          .add(TabNavigationEventChange(topBarNav: topBarNav));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          TabFeedScreen(
            tabController: tabController,
          ),
          Positioned(top: 0, child: TopBar(tabController: tabController))
        ],
      ),
    );
  }
}
