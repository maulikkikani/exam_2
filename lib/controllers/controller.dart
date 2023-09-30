import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quote_app_exam/models/quotes_model.dart';

class NavigationController extends GetxController{
  int intialIndex = 0;

  PageController pageController = PageController();

  quotesModel? selectedCategory;

  void gotAddCategory({required quotesModel data}){
    intialIndex = 0;
    selectedCategory = data;
    pageController.animateToPage(5, duration: Duration(milliseconds: 400), curve:Curves.easeInOut);
    update();
  }
}