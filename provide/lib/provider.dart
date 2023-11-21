import 'package:flutter/material.dart';

class Numberlistprovider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];
  String search = "";

  void add() {
    int last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }

  List<int> getFilteredNumber() {
    return numbers.where((element) {
      return element.toString().toLowerCase().contains(search.toLowerCase());
    }).toList();
  }

  void setsearch(String text) {
    search = text;
    notifyListeners();
  }
}
