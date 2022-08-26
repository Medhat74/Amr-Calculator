import 'package:amr_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle headLine() => TextStyle(
    fontSize: SizeConfig.defaultSize! * 4,
    fontWeight: FontWeight.w800,
    color: Colors.black,
    fontFamily: "Cairo",
  );

  static TextStyle appBarText() => TextStyle(
    color: Colors.black,
    fontSize: SizeConfig.defaultSize! * 2,
    fontWeight: FontWeight.bold,
    fontFamily: "Cairo",
  );

  static TextStyle bodyText() => TextStyle(
    fontSize: SizeConfig.defaultSize! * 3,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    fontFamily: "Cairo",
  );
  static TextStyle subTitle() => TextStyle(
    fontSize: SizeConfig.defaultSize! * 2,
    fontWeight: FontWeight.w800,
    color: Colors.grey,
    height: SizeConfig.defaultSize! * 2,
    fontFamily: "Cairo",
  );
  static TextStyle caption() => TextStyle(
    fontSize: SizeConfig.defaultSize! * 2,
    color: Colors.grey,
    fontFamily: "Cairo",
  );
  static TextStyle titleAr() => TextStyle(
    fontSize: SizeConfig.defaultSize! * 2,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: "Tajawal",
  );
}