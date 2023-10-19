import 'package:flutter/material.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
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
            //
            AppDimens.medium.height,
            //text
            Text(
              AppString.otpCodeSendFor
                  .replaceAll(AppString.replace, '09129666'),
              style: LightAppTextStyle.title,
            ),
            //
            AppDimens.small.height,
            const Text(
              AppString.wrongNumberEditNumber,
              style: LightAppTextStyle.primaryThemeTextStyle,
            ),
            //sized box
            AppDimens.large.height,
            //enter number phone
            AppTextField(
              lable: AppString.enterVerificationCode,
              perfixLable: '2:56',
              hint: AppString.hintVerificationCode,
              controller: _controller,
            ),
            //main button
            MainButton(
              text: AppString.next,
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
