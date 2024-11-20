import 'dart:developer';

import 'package:flutter/material.dart';

double screenWidth({
  required BuildContext context,
  required double responsiveWidth,
}) {
  log('width ${MediaQuery.of(context).size.height * responsiveWidth}');
  return MediaQuery.of(context).size.width * responsiveWidth;
}
