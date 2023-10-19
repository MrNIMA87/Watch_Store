import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/resource/colors.dart';

class LightAppTextStyle {
  LightAppTextStyle._();

  static const TextStyle title = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.title,
  );
  static const TextStyle hint = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 14,
    color: LightAppColors.hint,
  );

  static const TextStyle avatarText = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 11,
    color: LightAppColors.title,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle mainButton = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 15,
    color: LightAppColors.mainButtonText,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle primaryThemeTextStyle = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 15,
    color: LightAppColors.primaryColor,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle btmNavActiveTextStyle = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: LightAppColors.btmNavActiveItem,
    fontWeight: FontWeight.w500,
  );
    static const TextStyle btmNavInActiveTextStyle = TextStyle(
    fontFamily: FontFamily.dana,
    fontSize: 12,
    color: LightAppColors.btmNavInActiveItem,
    fontWeight: FontWeight.w500,
  );
}
