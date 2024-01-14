import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppDimens.small.width,
              const Icon(CupertinoIcons.cart),
              Row(
                children: [
                  const Text(
                    'پر فروش ترین ها',
                  ),
                  AppDimens.small.width,
                  SvgPicture.asset(Assets.images.svg.sort),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.images.svg.close),
              ),
              AppDimens.small.width,
            ],
          ),
        ),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          width: double.infinity,
          child: const Text(
            "لیست محصولات",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, required this.child});

  @override
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: preferredSize.height,
        decoration: const BoxDecoration(
            color: LightAppColors.appBar,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppDimens.medium),
                bottomRight: Radius.circular(AppDimens.medium)),
            boxShadow: [
              BoxShadow(
                  color: LightAppColors.shadow,
                  offset: Offset(0, 2),
                  blurRadius: 3)
            ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
