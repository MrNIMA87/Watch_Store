import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';

import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';

import 'package:watch_store/widgets/search_bar.dart';

import '../../widgets/app_slider.dart';
import '../../widgets/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //searchBar
              AppSearchBar(
                onTap: () {},
              ),
              const AppSlider(
                imageList: [],
              ),

              //cateGory
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //
                  CateGory(
                      size: size,
                      title: AppString.desktop,
                      onTap: () {},
                      colors: LightAppColors.catDesktopColors,
                      Icon: Assets.images.svg.desktop),
                  CateGory(
                      size: size,
                      title: AppString.digital,
                      onTap: () {},
                      colors: LightAppColors.catDigitalColors,
                      Icon: Assets.images.svg.digital),

                  CateGory(
                      size: size,
                      title: AppString.smart,
                      onTap: () {},
                      colors: LightAppColors.catSmartColors,
                      Icon: Assets.images.svg.smart),
                  //classic
                  CateGory(
                    size: size,
                    title: AppString.classic,
                    onTap: () {},
                    colors: LightAppColors.catClassicColors,
                    Icon: Assets.images.svg.clasic,
                  ),
                ],
              ),
              AppDimens.large.height,
              //list Item
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(8.0),
                            color: Colors.grey,
                            height: 295,
                            width: 200,
                          );
                        },
                      ),
                    ),
                    //text
                    const VerticalText()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
                SvgPicture.asset(Assets.images.svg.leftArrow),
                const Text(
                  'مشاهده همه',
                  style: LightAppTextStyle.title,
                )
              ],
            ),
            Text(
              'شگفت انگیزان',
              style: LightAppTextStyle.title,
            )
          ],
        ),
      ),
    );
  }
}
