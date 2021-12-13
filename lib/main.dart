import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app2/src/bindings/init_binding.dart';

import 'src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube clone 2',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => App(),
        )
      ],
    );
  }
}
