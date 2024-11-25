import 'package:flutter/material.dart';

double screenHeight({
  required BuildContext context,
  required double responsiveHeight,
}) {
  return MediaQuery.of(context).size.height * responsiveHeight;
}
