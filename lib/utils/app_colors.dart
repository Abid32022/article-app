
import 'dart:ui';

import 'package:flutter/cupertino.dart';
class AppColors{
  static const Color themecolor = Color(0xffDF9509);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color greyb8 = Color(0xffBBB8B8);
  static const Color grey3f = Color(0xff3F3F3F);
  static const Color greyf3 = Color(0xffF3F3F3);
  static const Color greyea = Color(0xffE8E6EA);
  static const Color greybb = Color(0xffADAFBB);
  static const Color blue3d = Color(0xff1B153D);
  static const Color grey90 = Color(0xff909090);
  static const Color grey999 = Color(0xff999999);
  static const Color grey63 = Color(0xff646363);
  static const Color greyd8 = Color(0xffD8D8D8);
  static const Color greyc9 = Color(0xffCAC9C9);
  static const Color blue42 = Color(0xff424242);
  static const Color black121 = Color(0xff212121);
  static const Color red26 = Color(0xffEF3826);
  static const Color black42 = Color(0xff424242);
  static const Color grey97 = Color(0xff979797);
  static const Color greya5 = Color(0xffAAA5A559);
  static const Color blue4b = Color(0xff46474B);
  static const Color oran4b = Color(0xffEC994B);
  static const Color oran1 = Color(0xffD48C4A);
  static const Color grey30 = Color(0xff3030304D);
  static const Color greyab = Color(0xffABABAB);
  static const Color blue63 = Color(0xff284B63);
  static const Color bagroundColor = Color(0xffFDFFF6);

  static Gradient orange1 = LinearGradient(
      colors: [
        AppColors.oran1,
        AppColors.oran4b,
  ]);
  static Gradient blackgredient = LinearGradient(
    begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.black.withOpacity(0.94),
        AppColors.black.withOpacity(0.0),
      ]);

}

