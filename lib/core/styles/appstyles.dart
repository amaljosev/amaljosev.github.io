import 'package:flutter/material.dart';
import 'package:myportfolio/core/colors/appcolors.dart';

class Appstyles {
  static const appbarTextStyle = TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      color: AppColors.textLight);
  static const appbarHoverTextStyle = TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      color: AppColors.accentOrange);

  static const drawerTextStyle = TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: AppColors.textLight);

  static TextStyle headline(BuildContext context) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.03,
      fontWeight: FontWeight.bold,
      color: Colors.orange,
    );
  }

  static TextStyle subHeadline(BuildContext context) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.02,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle bodyText(
      {required BuildContext context,
      Color? color = AppColors.textLight,
      double fontSize = 0.01}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
