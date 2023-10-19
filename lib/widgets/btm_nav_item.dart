
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';

import '../components/text_style.dart';
import '../resource/colors.dart';
import '../resource/dimens.dart';

class BtmNavItem extends StatelessWidget {
  String iconSvgPath;
  String text;
  bool isActive;
  void Function() onTap;

  BtmNavItem({
    required this.iconSvgPath,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: LightAppColors.btmNavColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconSvgPath,
                colorFilter: ColorFilter.mode(
                    isActive
                        ? LightAppColors.btmNavActiveItem
                        : LightAppColors.btmNavInActiveItem,
                    BlendMode.srcIn),
              ),
              AppDimens.small.height,
              Text(
                text,
                style: isActive
                    ? LightAppTextStyle.btmNavActiveTextStyle
                    : LightAppTextStyle.btmNavInActiveTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
