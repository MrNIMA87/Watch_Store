import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/utils/image_handeler.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/main_button.dart';

import '../widgets/register_appbar.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _controller = TextEditingController();

  ImageHandler imageHandler = ImageHandler();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: RegistrationAppBar(size: size),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //sizedBox
                AppDimens.large.height,
                //avatar
                Avatar(
                  onTap: () async => await imageHandler
                      .pickAndCropImage(source: ImageSource.gallery)
                      .then((value) => setState(() {})),
                  file: imageHandler.getImage,
                ),
                //
                AppTextField(
                  lable: AppString.nameLastName,
                  hint: AppString.hintNameLastName,
                  controller: _controller,
                ),
                //
                AppTextField(
                  lable: AppString.homeNumber,
                  hint: AppString.hintHomeNumber,
                  controller: _controller,
                ),
                //
                AppTextField(
                  lable: AppString.address,
                  hint: AppString.hintAddress,
                  controller: _controller,
                ),
                //
                AppTextField(
                  lable: AppString.postalCode,
                  hint: AppString.hintPostalCode,
                  controller: _controller,
                ),
                //
                AppTextField(
                  lable: AppString.location,
                  hint: AppString.hintLocation,
                  icon: const Icon(Icons.location_on),
                  controller: _controller,
                ),
                //main button
                MainButton(
                  text: AppString.next,
                  onPressed: () =>
                      Navigator.pushNamed(context, ScreenNames.mainScreen),
                ),
                AppDimens.large.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
