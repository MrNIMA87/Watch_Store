import 'package:flutter/material.dart';

import '../resource/colors.dart';
import '../resource/dimens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, required this.child});
  @override
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.medium),
        height: preferredSize.height,
        decoration: const BoxDecoration(
          color: LightAppColors.appBar,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppDimens.medium),
            bottomRight: Radius.circular(AppDimens.medium),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: LightAppColors.shadow,
              offset: Offset(0, 5),
              blurRadius: 3,
            ),
          ],
        ),
        child: child,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}