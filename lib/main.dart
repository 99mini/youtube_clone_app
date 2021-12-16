import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app2/src/bindings/init_binding.dart';

import 'src/app.dart';
import 'src/components/youtube_detail.dart';
import 'src/controllers/youtube_detail_controller.dart';
import 'src/controllers/youtube_search_controller.dart';
import 'src/pages/youtube_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube clone 2',
      theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: const MaterialColor(0xFFffffff, {
            50: Color(0xffffffff),
            100: Color(0xffffffff),
            200: Color(0xffffffff),
            300: Color(0xffffffff),
            400: Color(0xffffffff),
            500: Color(0xffffffff),
            600: Color(0xffffffff),
            700: Color(0xffffffff),
            800: Color(0xffffffff),
            900: Color(0xffffffff),
          }),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => App(),
        ),
        GetPage(
          name: "/detail/:videoId",
          page: () => YoutubeDetail(),
          binding: BindingsBuilder(
            () => Get.lazyPut<YoutubeDetailController>(
                () => YoutubeDetailController()),
          ),
        ),
        GetPage(
          name: "/search",
          page: () => YoutubeSearch(),
          binding: BindingsBuilder(
            () => Get.lazyPut<YoutubeSearchController>(
                () => YoutubeSearchController()),
          ),
        ),
      ],
    );
  }
}
