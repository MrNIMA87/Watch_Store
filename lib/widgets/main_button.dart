import 'package:flutter/material.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/text_style.dart';

class MainButton extends StatelessWidget {
  final String text;
  void Function() onPressed;
  MainButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * .07,
      width: size.width * .75,
      child: ElevatedButton(
        style: AppButtonStyle.mainButtonStyle,
        onPressed: onPressed,
        child: Text(text, style: LightAppTextStyle.mainButton,),
      ),
    );
  }
}
