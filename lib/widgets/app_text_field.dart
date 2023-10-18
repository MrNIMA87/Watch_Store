import 'package:flutter/material.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/resource/dimens.dart';

class AppTextField extends StatelessWidget {
  final String Lable;
  final String hint;
  TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  TextInputType? inputType;

  AppTextField({
    required this.Lable,
    required this.hint,
    this.icon = const SizedBox(),
    required this.controller,
    this.textAlign = TextAlign.center,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(Dimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(Lable),
          Dimens.medium.height,
          SizedBox(
            height: size.height * .07,
            width: size.width * .75,
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
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
