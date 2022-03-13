import 'package:flutter/material.dart';

class ResponsiveHelper {
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 750;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 750 &&
        MediaQuery.of(context).size.width < 1200;
  }
}
