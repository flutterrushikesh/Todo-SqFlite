import 'dart:developer';

import 'package:flutter/material.dart';

class OnboardingController extends ChangeNotifier {
  int currentPage = 0;
  final PageController pageController = PageController();

  void changePageIndex({required int index}) {
    log('$index');
    currentPage++;
    notifyListeners();
  }
}
