import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slive/bloc/feed/feed_bloc.dart';
import 'package:slive/bloc/tab_navigation/tab_navigation_bloc.dart';
import 'package:slive/mock/demo_data.dart';
import 'package:slive/widgets/feed.dart';
import 'package:slive/widgets/feed_old.dart';

class FeedPageView extends StatelessWidget {
  const FeedPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: BlocBuilder<FeedBloc, FeedState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: state.listFeedData.length,
            scrollDirection: Axis.vertical,
            onPageChanged: (value) {
              BlocProvider.of<FeedBloc>(context)
                  .add(FeedEventChangePageView(value));
            },
            itemBuilder: (context, index) {
              return const Feed();
            },
          );
        },
      ),
    );
  }
}
