import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slive/constans/tiktok_icon.dart';

const TiktokFont = 'AkzidenzGrotesk';

class BottomBar extends StatefulWidget {
  final TabController tabController;
  const BottomBar({super.key, required this.tabController});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class BottomTabBarItem {
  final int id;
  final String title;
  final BottomTabBarValue value;
  final IconData iconData;
  const BottomTabBarItem(
      {required this.id,
      required this.title,
      required this.value,
      required this.iconData});
}

enum BottomTabBarValue { home, shop, create, message, profile }

class _BottomBarState extends State<BottomBar> {
  static const double barHeight = 50.0;
  static const double iconSize = 22;
  static const double createButtonWidth = 35.0;

  Widget get customCreateIcon => Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 4),
        child: ElevatedButton(
          onPressed: () {
            widget.tabController.index = 2;
          },
          style: ButtonStyle(
              enableFeedback: false,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          child: SizedBox(
            // color: Colors.white,
            width: 40.0,
            height: 25.0,
            child: Stack(children: [
              Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  width: createButtonWidth,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 45, 108),
                      borderRadius: BorderRadius.circular(7.0))),
              Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  width: createButtonWidth,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 32, 211, 234),
                      borderRadius: BorderRadius.circular(7.0))),
              Center(
                  child: Container(
                height: double.infinity,
                width: createButtonWidth,
                decoration: BoxDecoration(
                    color: bottomTabBarValue == BottomTabBarValue.home
                        ? Colors.white
                        : Colors.black,
                    borderRadius: BorderRadius.circular(7.0)),
                child: Icon(
                  Icons.add,
                  color: bottomTabBarValue == BottomTabBarValue.home
                      ? Colors.black
                      : Colors.white,
                  size: 20.0,
                ),
              )),
            ]),
          ),
        ),
      );

  List<BottomTabBarItem> listBottomTabBarItem = [
    const BottomTabBarItem(
        id: 0,
        title: "Trang chủ",
        value: BottomTabBarValue.home,
        iconData: TiktokIcon.home),
    const BottomTabBarItem(
        id: 1,
        title: "Shop",
        value: BottomTabBarValue.shop,
        iconData: Icons.shopping_bag_outlined),
    const BottomTabBarItem(
        id: 2,
        title: "Tạo",
        value: BottomTabBarValue.create,
        iconData: Icons.add),
    const BottomTabBarItem(
        id: 3,
        title: "Hộp thư",
        value: BottomTabBarValue.message,
        iconData: TiktokIcon.messages),
    const BottomTabBarItem(
        id: 4,
        title: "Hồ sơ",
        value: BottomTabBarValue.profile,
        iconData: TiktokIcon.profile),
  ];
  BottomTabBarValue bottomTabBarValue = BottomTabBarValue.home;
  Widget buttonTabBarButton(BottomTabBarItem item) {
    return item.value != BottomTabBarValue.create
        ? ElevatedButton(
            style: ButtonStyle(
                // enableFeedback: false,
                overlayColor: item.value == BottomTabBarValue.home
                    ? MaterialStateProperty.all(Colors.transparent)
                    : MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(Colors.transparent)),
            onPressed: () {
              setState(() {
                widget.tabController.index = item.id;
                bottomTabBarValue = item.value;
              });
            },
            child: Column(
              children: [
                Icon(item.iconData,
                    color: bottomTabBarValue == item.value
                        ? (item.value == BottomTabBarValue.home
                            ? Colors.white
                            : Colors.black)
                        : (bottomTabBarValue == BottomTabBarValue.home
                            ? Colors.grey
                            : Colors.grey)),
                Text(
                  item.title,
                  style: TextStyle(
                    fontFamily: TiktokFont,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: bottomTabBarValue == item.value
                        ? (item.value == BottomTabBarValue.home
                            ? Colors.white
                            : Colors.black)
                        : (bottomTabBarValue == BottomTabBarValue.home
                            ? Colors.grey
                            : Colors.grey),
                  ),
                )
              ],
            ),
          )
        : customCreateIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight,
      color: bottomTabBarValue == BottomTabBarValue.home
          ? Colors.black
          : Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [...listBottomTabBarItem.map((e) => buttonTabBarButton(e))],
        ),
      ),
    );
  }
}
