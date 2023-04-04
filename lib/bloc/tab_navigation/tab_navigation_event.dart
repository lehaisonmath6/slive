part of 'tab_navigation_bloc.dart';

abstract class TabNavigationEvent {}

class TabNavigationEventChange extends TabNavigationEvent {
  AppNav? appNav;
  BottomTabNav? bottomTabNav;
  TopBarNav? topBarNav;

  TabNavigationEventChange({this.appNav, this.bottomTabNav, this.topBarNav});
}
