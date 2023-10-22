import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';

import '../gen/assets.gen.dart';
import '../resource/dimens.dart';

class CateGory extends StatelessWidget {
  CateGory({
    super.key,
    required this.size,
    required this.title,
    required this.onTap,
    required this.colors,
    required this.Icon,
  });

  final Size size;
  final title;
  final onTap;
  final colors;
  final Icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(AppDimens.small),
            width: size.width * .16,
            height: size.height * .09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.large),
              gradient: LinearGradient(
                colors: colors,
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 49,
                    child: SvgPicture.asset(
                      Icon,
                    )),
              ],
            ),
          ),
          AppDimens.small.height,
          Text(title, style: LightAppTextStyle.title.copyWith(fontSize: 16))
        ],
      ),
    );
  }
}
