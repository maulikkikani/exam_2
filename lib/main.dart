import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_app_exam/components/quotes_details.dart';
import 'package:quote_app_exam/views/screens/MainPage.dart';
import 'package:quote_app_exam/views/screens/introscreen.dart';
import 'package:quote_app_exam/views/screens/spleshscreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      initialRoute: '/spleshscreen',
      getPages: [
        GetPage(
          name: '/introscreen',
          page: () => introscreen(),
        ),
        GetPage(
          name: '/spleshscreen',
          page: () => spleshscreen(),
        ),
        GetPage(
          name: '/',
          page: () => Mainpage(),
        ),
        GetPage(
          name: '/quotes_details',
          page: () => quotes_details(),
        ),
      ],
    ),
  );
}
