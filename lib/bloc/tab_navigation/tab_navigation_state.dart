part of 'tab_navigation_bloc.dart';

enum AppNav { main, authorProfile }

enum BottomTabNav { home, shop, create, notificationBox, profile }

enum TopBarNav { live, following, forYou, search }

class TabNavigationState extends Equatable {
  final AppNav appNav;
  final BottomTabNav bottomTabNav;
  final TopBarNav topBarNav;
  const TabNavigationState(
      {required this.appNav,
      required this.bottomTabNav,
      required this.topBarNav});
  @override
  // TODO: implement props
  List<Object?> get props => [appNav, bottomTabNav, topBarNav];

  TabNavigationState copyWith(
      {AppNav? appNav, BottomTabNav? bottomTabNav, TopBarNav? topBarNav}) {
    return TabNavigationState(
        appNav: appNav ?? this.appNav,
        bottomTabNav: bottomTabNav ?? this.bottomTabNav,
        topBarNav: topBarNav ?? this.topBarNav);
  }
}

class TabNavigationInitial extends TabNavigationState {
  const TabNavigationInitial()
      : super(
            appNav: AppNav.main,
            bottomTabNav: BottomTabNav.home,
            topBarNav: TopBarNav.forYou);
}
