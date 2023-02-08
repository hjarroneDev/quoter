import 'package:flutter/material.dart';

class Mylist with ChangeNotifier {
  final List _draft = [];

  List get draft => _draft;

  void isertRow(int? index, String? artigo, int? hscode, qty, double? unty) {
    _draft.insertAll(index!, [
      [artigo, hscode, qty, unty]
    ]);

    notifyListeners();
  }

  void newRow(String? artigo, int? hscode, qty, double? unty) {
    _draft.addAll([
      [artigo, hscode, qty, unty]
    ]);

    notifyListeners();
  }

  void deleteRow(int? index) {
    _draft.removeRange(index! - 1, index);

    notifyListeners();
  }
}
