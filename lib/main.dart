import 'package:filemanager/const/kcolor.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroudcolor,
        appBarTheme: AppBarTheme(
          color: kbackgroudcolor,
          elevation: 0,
        ),
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      getPages: AppPages.routes,
    ),
  );
}
