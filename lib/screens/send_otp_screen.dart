import 'package:flutter/material.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_text_field.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.images.png.mainLogo.path),
            //sized box
            Dimens.large.height,
            //enter number phone
            AppTextField(
              Lable: AppString.enterYourNumber,
              hint: AppString.hintPhoneNumber,
              controller: _controller,
            ),
          ],
        ),
      )),
    );
  }
}
