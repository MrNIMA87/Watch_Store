import 'package:flutter/material.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class AppButtonStyle {
  AppButtonStyle._();
  static ButtonStyle mainButtonStyle =const ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimens.medium),
        ),
      ),
    ),
    backgroundColor: MaterialStatePropertyAll(LightAppColors.primaryColor)
  );
}
