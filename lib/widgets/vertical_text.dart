import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/resource/dimens.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                    angle: 1.5,
                    child: SvgPicture.asset(Assets.images.svg.back)),
                AppDimens.medium.width,
                const Text(
                  'مشاهده همه',
                  style: LightAppTextStyle.title,
                ),
              ],
            ),
            const Text(
              'شگفت انگیزان',
              style: LightAppTextStyle.amazing,
            )
          ],
        ),
      ),
    );
  }
}
