import 'dart:developer';

import 'package:flutter/material.dart';

double screenHeight({
  required BuildContext context,
  required double responsiveHeight,
}) {
  log('height ${MediaQuery.of(context).size.height * responsiveHeight}');
  return MediaQuery.of(context).size.height * responsiveHeight;
}
