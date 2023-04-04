// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:slive/widgets/feed_page_view.dart';
// import 'package:slive/widgets/top_bar.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   late TabController tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     tabController = TabController(length: 3, vsync: this);

//     tabController.animation!.addListener(() {
//       setState(() {});
//       // print("animation value ${tabController.animation!.value}");
//     });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     tabController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             TabBarView(controller: tabController, children: [
//               FeedPageView(pageTitle: "Page Bạn bè"),
//               FeedPageView(pageTitle: "Page following"),
//               FeedPageView(pageTitle: "PageFor you"),
//             ]),
//             Positioned(
//               child: TopBar(animationValue: tabController.animation!.value),
//               top: 0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
