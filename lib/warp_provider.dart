import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/feed/feed_bloc.dart';
import 'package:slive/bloc/tab_navigation/tab_navigation_bloc.dart';
import 'package:slive/slive_app.dart';
import 'package:slive/widgets/feed_page_view.dart';

class WrapProvider extends StatefulWidget {
  const WrapProvider({super.key});

  @override
  State<WrapProvider> createState() => _WrapProviderState();
}

class _WrapProviderState extends State<WrapProvider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return TabNavigationBloc();
            },
          ),
          BlocProvider(
            create: (context) {
              return FeedBloc()..add(const FeedEventFetch(currentOffset: 0));
            },
          ),
        ],
        child: const SliveApp(),
      ),
    );
  }
}
