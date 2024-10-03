import 'package:flutter/material.dart';


class Responsive {

  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) {
    return  MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 850;
  }

  static bool isDesktop(BuildContext context){
    // print(MediaQuery.of(context).size.width);
    return MediaQuery.of(context).size.width >= 1100;
  }
}

