import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/tab_navigation/tab_navigation_bloc.dart';
import 'package:slive/screens/author_profile_screen.dart';
import 'package:slive/screens/main_app_screen.dart';

class SliveApp extends StatefulWidget {
  const SliveApp({super.key});

  @override
  State<SliveApp> createState() => _SliveAppState();
}

class _SliveAppState extends State<SliveApp>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabNavigationBloc, TabNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: TabBarView(
              physics: (state.bottomTabNav == BottomTabNav.home &&
                      state.topBarNav == TopBarNav.forYou)
                  ? const AlwaysScrollableScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [MainAppScreen(), AuthorProfileScreen()]),
        );
      },
    );
  }
}
