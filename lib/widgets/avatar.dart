import 'package:flutter/material.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.onTap, required this.file});
  final onTap;
  final file;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: file == null
                ? Image.asset(Assets.images.png.avatar.path)
                : Image.file(file),
          ),
          AppDimens.medium.height,
          const Text(
            AppString.chooseProfileImage,
            style: LightAppTextStyle.avatarText,
          )
        ],
      ),
    );
  }
}
