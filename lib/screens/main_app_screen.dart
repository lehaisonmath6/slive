import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/tab_navigation/tab_navigation_bloc.dart';
import 'package:slive/widgets/bottom_bar.dart';
import 'package:bloc/bloc.dart';

import 'create_post_screen.dart';
import 'home_screen.dart';
import 'notifcation_box_screen.dart';
import 'profile_screen.dart';
import 'shop_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      var bottomNav = BottomTabNav.home;
      switch (tabController.index) {
        case 0:
          bottomNav = BottomTabNav.home;
          break;
        case 1:
          bottomNav = BottomTabNav.shop;
          break;
        case 2:
          bottomNav = BottomTabNav.create;
          break;
        case 3:
          bottomNav = BottomTabNav.notificationBox;
          break;
        case 4:
          bottomNav = BottomTabNav.profile;
      }
      BlocProvider.of<TabNavigationBloc>(context)
          .add(TabNavigationEventChange(bottomTabNav: bottomNav));

      // print("Tab controller change ${bottomNav}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabNavigationBloc, TabNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  HomeScreen(),
                  ShopScreen(),
                  CreatePostScreen(),
                  NotificationBoxScreen(),
                  ProfileScreen()
                ]),
          ),
          // body: HomeScreen(),
          bottomNavigationBar: BottomBar(
            tabController: tabController,
          ),
        );
      },
    );
  }
}
