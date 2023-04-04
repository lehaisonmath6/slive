import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:slive/constans/tiktok_icon.dart';
import 'package:simple_shadow/simple_shadow.dart';

const TiktokFont = 'AkzidenzGrotesk';

class TiktokFontDemo extends StatelessWidget {
  static const double createButtonWidth = 35.0;

  const TiktokFontDemo({super.key});
  Widget get customCreateIcon => Container(
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
                color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
            child: const Icon(
              Icons.add,
              color: Colors.black,
              size: 20.0,
            ),
          )),
        ]),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    TiktokIcon.home,
                    color: Colors.white,
                    size: 22,
                  ),
                  Text(
                    "Trang chủ",
                    style: TextStyle(
                        fontFamily: TiktokFont,
                        fontSize: 10,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 23,
                    height: 23,
                    child: Image.asset(
                      "assets/icons/shop.png",
                      color: Colors.grey,
                      // colorBlendMode: BlendMode.hardLight,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(
                        fontFamily: TiktokFont,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
              customCreateIcon,
              Column(
                children: [
                  Icon(TiktokIcon.messages),
                  Text(
                    "Hộp thư",
                    style: TextStyle(fontFamily: TiktokFont, fontSize: 10),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(TiktokIcon.profile),
                  Text(
                    "Hồ sơ",
                    style: TextStyle(fontFamily: TiktokFont, fontSize: 10),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
