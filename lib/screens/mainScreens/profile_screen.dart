import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/screens/product_single_screen.dart';
import 'package:watch_store/widgets/surface_continer.dart';

import '../../components/text_style.dart';
import '../../resource/strings.dart';
import '../../widgets/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            AppString.profile,
            style: LightAppTextStyle.title,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppDimens.large.height,
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(Assets.images.png.avatar.path),
                ),
                AppDimens.medium.height,
                const Text(
                  'ساسان صفری',
                  style: LightAppTextStyle.avatarText,
                ),
                AppDimens.medium.height,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //
                    Text(
                      AppString.activeAddress,
                      style: LightAppTextStyle.title
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    //
                    Row(
                      children: [
                        SvgPicture.asset(Assets.images.svg.leftArrow),
                        Expanded(
                          child: Text(
                            AppString.lorem,
                            style: LightAppTextStyle.title
                                .copyWith(fontWeight: FontWeight.w600),
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),

                    //
                    ProfileItem(
                      svgIcon: Assets.images.svg.user,
                      content: 'نیما شمسی',
                    ),

                    //
                    ProfileItem(
                      svgIcon: Assets.images.svg.cart,
                      content: '12114532576',
                    ),

                    //
                    ProfileItem(
                      svgIcon: Assets.images.svg.phone,
                      content: '09301548625',
                    ),
                    //
                    SuraFace(
                      child: const Text(
                        'قوانین',
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.svgIcon,
    required this.content,
  });
  final String svgIcon;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.small),
      child: Row(
        children: [
          const Divider(),
          10.0.height,
          Expanded(
            child: Text(
              content,
              style:
                  LightAppTextStyle.title.copyWith(fontWeight: FontWeight.w600),
              softWrap: true,
              maxLines: 2,
              textAlign: TextAlign.right,
            ),
          ),
          AppDimens.small.width,
          SvgPicture.asset(svgIcon),
        ],
      ),
    );
  }
}
