import 'package:flutter/material.dart';

double screenWidth({
  required BuildContext context,
  required double responsiveWidth,
}) {
  return MediaQuery.of(context).size.width * responsiveWidth;
}
