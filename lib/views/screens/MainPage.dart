import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quote_app_exam/components/categories_page.dart';
import 'package:quote_app_exam/components/fevorites_page.dart';
import 'package:quote_app_exam/components/settings_page.dart';
import 'package:quote_app_exam/controllers/controller.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  NavigationController navigationController = Get.put(NavigationController());
  final List<Widget> _pages = [
    const HomePage(),
    const fevorites_page(),
    const settings_page(),
  ];

  void onDestinationSelected(int index) {
    setState(() {
      navigationController.intialIndex = index;
      navigationController.pageController.animateToPage(index,
          curve: Curves.bounceInOut,
          duration: const Duration(milliseconds: 300));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jumping Minds",
          style: GoogleFonts.mada(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            onPressed: () {
              if (Get.isDarkMode == true) {
                Get.changeTheme(ThemeData.light(useMaterial3: true));
              } else {
                Get.changeTheme(ThemeData.dark(useMaterial3: true));
              }
              setState(() {});
            },
            icon: Icon(Icons.sunny),
          ),
        ],
      ),
      body: PageView(
        controller: navigationController.pageController,
        onPageChanged: (value) {
          setState(() {
            navigationController.intialIndex = value;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationController.intialIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.category_sharp), label: 'categories'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'favorites'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
