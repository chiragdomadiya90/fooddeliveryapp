import 'package:flutter/foundation.dart';

class PageTranceController extends ChangeNotifier {
  bool isLastPage = false;

  pageTran(dynamic value, int index) {
    isLastPage = value == index;

    notifyListeners();
  }
}
