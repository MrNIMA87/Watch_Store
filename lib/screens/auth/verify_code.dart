import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/cubit/auth_cubit.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  late Timer _timer;
  int _start = 120;

  startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _timer.cancel();
          Navigator.of(context).pop();
        } else {
          _start--;
        }
      });
    });
  }

  String formatTime(int sec) {
    int min = sec ~/ 60;
    int seconds = sec % 60;

    String minStr = min.toString().padLeft(2, "0");
    String secondsStr = seconds.toString().padLeft(2, "0");
    return '$minStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    final mobileRouteArg = ModalRoute.of(context)!.settings.arguments;
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
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Text(
                AppString.otpCodeSendFor
                    .replaceAll(AppString.replace, mobileRouteArg.toString()),
                style: LightAppTextStyle.title,
              ),
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
              perfixLable: formatTime(_start),
              hint: AppString.hintVerificationCode,
              controller: _controller,
            ),
            //main button
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                _timer.cancel();
                if (state is VerifiedIsRegisteredNotState) {
                  Navigator.pushNamed(context, ScreenNames.registerScreen);
                } else if (state is VerifiedIsRegisteredState) {
                  Navigator.pushNamed(context, ScreenNames.mainScreen);
                }
              },
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return MainButton(
                    text: AppString.next,
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context).verifyCode(
                          mobileRouteArg.toString(), _controller.text);
                    },
                  );
                }
              },
            )
          ],
        ),
      )),
    );
  }
}
