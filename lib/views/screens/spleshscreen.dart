import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class spleshscreen extends StatefulWidget {
  const spleshscreen({Key? key}) : super(key: key);

  @override
  State<spleshscreen> createState() => _spleshscreenState();
}

class _spleshscreenState extends State<spleshscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Get.toNamed('/introscreen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            height: 1000,
            width: 1000,
            child: Center(
              child: Image(
                image: AssetImage("assets/images/wallpaper.jpg"),
              ),
            ),
          ),
          Positioned(
            height: h * 0.50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My_Quote_App",
                  style: GoogleFonts.abel(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                CircularProgressIndicator(
                  color: Colors.black,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
