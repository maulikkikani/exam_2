import 'package:flutter/material.dart' show BuildContext, EdgeInsets, Image, Key, Navigator, Padding, Scaffold, State, StatefulWidget, Text, Widget;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introscreen extends StatefulWidget {
  const introscreen({Key? key}) : super(key: key);

  @override
  State<introscreen> createState() => _introscreenState();
}

class _introscreenState extends State<introscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            body: "Screen 1",
            titleWidget: Text(
              "Welcom To My Quote App",
              style: GoogleFonts.varta(
                fontSize: 30,
              ),
            ),
            decoration: PageDecoration(
              fullScreen: true,
            ),
          ),
          PageViewModel(
            body: "Screen 2",
            titleWidget: Text("I was looking for someone to inspire me, motivate me, support me, Someone who keep me focused... would love me, cherish me, make mehappy and I realized that all along 1 was looking for myself.",
              style: GoogleFonts.varta(
                fontSize: 20,
              ),
            ),
            image: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/1.jpg',height: 250,width: 250,),
            ),
          ),
          PageViewModel(

            body: "Screen 3",
            titleWidget: Text("Happiness is a choice. You can choose to be happy. There's going tobe stress in life, but it's your choice whether you let it affect you or not",
              style: GoogleFonts.varta(
                fontSize: 20,
              ),
            ),

            image: Image.asset('assets/images/4.jpg',height: 200,width: 200,),
          ),
        ],
        done: Text("Thank You"),
        showNextButton: false,
        onDone: () {
          Get.offNamedUntil('/', (route) => false);
        },
      ),
    );
  }
}
