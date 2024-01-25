import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/cubit/auth_cubit.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class SendSmsScreen extends StatelessWidget {
  SendSmsScreen({super.key});
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
            AppDimens.large.height,
            //enter number phone
            AppTextField(
              lable: AppString.enterYourNumber,
              hint: AppString.hintPhoneNumber,
              controller: _controller,
            ),
            //main button
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is SentState) {
                  Navigator.pushNamed(
                    context,
                    ScreenNames.verifyCodeScreen,
                    arguments: state.mobile,
                  );
                } else if (state is ErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(milliseconds: 800),
                      backgroundColor: Colors.red,
                      content: Text('Error خطا'),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return MainButton(
                    text: AppString.next,
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .sendSms(_controller.text);
                    },
                  );
                }
              },
            ),
          ],
        ),
      )),
    );
  }
}
