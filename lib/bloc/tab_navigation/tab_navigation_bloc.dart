import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tab_navigation_event.dart';
part 'tab_navigation_state.dart';

class TabNavigationBloc extends Bloc<TabNavigationEvent, TabNavigationState> {
  TabNavigationBloc() : super(TabNavigationInitial()) {
    on<TabNavigationEventChange>((event, emit) {
      emit(state.copyWith(
          appNav: event.appNav,
          bottomTabNav: event.bottomTabNav,
          topBarNav: event.topBarNav));
    });
  }
}
