import 'package:flutter/material.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/resource/dimens.dart';

class AppTextField extends StatelessWidget {
  final String lable;
  final String perfixLable;

  final String hint;
  TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  TextInputType? inputType;

  AppTextField({
    required this.lable,
    required this.hint,
    this.icon = const SizedBox(),
    required this.controller,
    this.textAlign = TextAlign.center,
    this.inputType,
    this.perfixLable = '',
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * .75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  perfixLable,
                  style: LightAppTextStyle.title,
                ),
                Text(
                  lable,
                  style: LightAppTextStyle.title,
                ),
              ],
            ),
          ),
          AppDimens.medium.height,
          SizedBox(
            height: size.height * .07,
            width: size.width * .75,
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintStyle: LightAppTextStyle.hint,
                hintText: hint,
                prefixIcon: icon,
              ),
            ),
          )
        ],
      ),
    );
  }
}
