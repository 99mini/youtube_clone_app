import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app2/src/controllers/app_controller.dart';
import 'package:youtube_clone_app2/src/pages/explore.dart';
import 'package:youtube_clone_app2/src/pages/home.dart';
import 'package:youtube_clone_app2/src/pages/library.dart';
import 'package:youtube_clone_app2/src/pages/subscribe.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.Home:
            return Home();
            break;
          case RouteName.Explore:
            return Explore();
            break;
          case RouteName.Add:
            break;
          case RouteName.Subs:
            return Subscribe();
            break;
          case RouteName.Library:
            return Library();
            break;
        }
        return Container();
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.changePageIndex(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/home_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/home_on.svg"),
                label: "홈"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/icons/compass_off.svg",
                  width: 22,
                ),
                activeIcon: SvgPicture.asset(
                  "assets/svg/icons/compass_on.svg",
                  width: 22,
                ),
                label: "탐색"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SvgPicture.asset(
                    "assets/svg/icons/plus.svg",
                    width: 35,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/subs_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/subs_on.svg"),
                label: "구독"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/icons/library_off.svg"),
                activeIcon: SvgPicture.asset("assets/svg/icons/library_on.svg"),
                label: "보관함"),
          ],
        );
      }),
    );
  }
}
