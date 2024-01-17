
import 'package:flutter/material.dart';

import '../resource/colors.dart';
import '../resource/dimens.dart';

class SuraFace extends StatelessWidget {
  SuraFace({super.key, required this.child});
  final child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(
          AppDimens.medium, AppDimens.medium, AppDimens.medium, 0),
      padding: const EdgeInsets.all(AppDimens.small),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.medium),
        color: LightAppColors.suraFaceColor,
      ),
      child: child,
    );
  }
}