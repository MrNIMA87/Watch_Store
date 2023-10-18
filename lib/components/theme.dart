import 'package:flutter/material.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    primaryColor: LightAppColors.primaryColor,
    scaffoldBackgroundColor: LightAppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.focused)) {
            return LightAppColors.focusedTextField;
          } else {
            return LightAppColors.unfocusedTextField;
          }
        },
      ),
      contentPadding: const EdgeInsets.all(AppDimens.medium),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimens.medium),
          ),
          borderSide: BorderSide(
            color: LightAppColors.borderColor,
          )),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimens.medium),
          ),
          borderSide: BorderSide(
            color: LightAppColors.primaryColor,
          )),
    ),
  );
}
