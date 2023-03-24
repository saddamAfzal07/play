import 'package:flutter/material.dart';

class AppColors {
  ///====================== Solid Colors ============================
  static const darkBlueColor = Color(0xFF1A69E2);
  static const lightBlueBackgroundBoxColor = Color(0xFF30AAE1);
  static const darkRedColor = Color(0xFF640B0B);
  static const backgroundColor = Color(0xFF070125);
  static const containerColor = Color(0xFF0C0336);
  static const greyColor = Color(0xFFA6A6A6);

  static const headerColor = Color(0xFFF0F4F7);

  static const focusedBorderColor = Color(0xff082F69);
  static const lightPeachColor = Color(0xffFFF7F7);
  static const peachColor = Color(0xFFFCE7EA);

  static const darkGreenColor = Color(0xFF329429);
  static const lightGreenBackgroundBoxColor = Color(0xFFF3F9F2);
  static const textBleColor = Color(0xFF1257BC);
  static const lightRedBackgroundColor = Color(0xFFFFF0F0);

  static const back1Color = Color(0xFF232542);
  static const back2Color = Color(0xFF353754);
  static const back3Color = Color(0xFF555874);
  static const tabBackColor = Color(0xFF494A6D);
  static const redColor = Color(0xFFFF4242);
  static const lightRedColor = Color(0xffFF6B6B);
  static const textBlackColor = Color(0xff524B4B);
  static const darkGreyColor = Color(0xFF858484);
  static const lightGreyColor = Color(0xFFA1A1A1);
  static const borderColor = Color(0xFFC9C9C9);
  static Color headerShadeColor = Colors.grey.shade200;

  static const navyBlueColor = Color(0xFF082F69);
  static const lightWhite = Color(0xffFCFCFF);
  static const ctaBackColor = Color(0xFF29325F);

  // static const back1Color = Color(0xFF232542);
  // static const back2Color = Color(0xFF353754);
  // static const back3Color = Color(0xFF555874);
  // static const tabBackColor = Color(0xFF494A6D);
  static const ctaTextColor = Color(0xFF07CBFD);
  static const ctaBlueColor = Color(0xFF055FFC);
  static const lightBlueColor = Color(0xFF3D8CFF);
  static const borderColorDark = Color(0xFFC9C9C9);
  static const hintColor = Color(0xFFA1A1A1);
  static const linesColor = Color(0xFFA8A9B7);
  static const textColor = Color(0xFF524B4B);
  static const iconColor = Color(0xFFC7C8D2);
  static const lightOrangeColor = Color(0xFFFFAD88);
  static const lightTurquoiseColor = Color(0xFF72DFFF);
  static const whiteColor = Color(0xFFFFFFFF);
  static const orangeColor = Color(0xFFFFA26D);
  static const yellowColor = Color(0xFFFFE792);
  static const greenColor = Color(0xFF39E262);
  static const turquoiseColor = Color(0xFF6DD4FF);
  static const redBackColor = Color(0xFF442F48);
  static const orangeBackColor = Color(0xFF443748);
  static const yellowBackColor = Color(0xFF4A4B63);
  static const greenBackColor = Color(0xFF274147);
  static const turquoiseBackColor = Color(0xFF324868);

  ///====================== Back Gradient Colors ==========================

  static const backGradient1Color = LinearGradient(colors: [
    Color(0xFF252842),
    Color(0xFF3B3D5E),
  ], begin: Alignment.bottomCenter, end: Alignment.topCenter);
  static const backGradient2Color = LinearGradient(
      colors: [Color(0xFF414267), Color(0xFF353954)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  ///====================== Border Gradient Colors ==========================

  static const borderGradientColor = LinearGradient(
      colors: [Color(0xFF4B4C6F), Color(0xFF666982)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static const borderGradientColorRightToLeft = LinearGradient(
      colors: [Color(0xFF666982), Color(0xFF4B4C6F)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static const ctaBorderGradientColor = LinearGradient(
      colors: [Color(0xFF07CBFD), Color(0xFF055FFC)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
