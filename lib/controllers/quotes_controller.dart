import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quote_app_exam/models/quotes_model.dart';

class QuotesController extends GetxController {
  RxList<QuoteModel> quotes = <QuoteModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadJSON();
  }

  Future<void> loadJSON() async {
    final data = await rootBundle.loadString('assets/quotes.json');
    final decodedData = jsonDecode(data);
    final List<QuoteModel> parsedQuotes = List<QuoteModel>.from(
      decodedData.map(
            (json) => QuoteModel.fromJson(json),
      ),
    );
    quotes.value = parsedQuotes;
  }
}