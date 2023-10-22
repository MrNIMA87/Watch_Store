import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';
import '../resource/colors.dart';
import '../resource/dimens.dart';
import '../resource/strings.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
              color: LightAppColors.searchBar,
              borderRadius: BorderRadius.all(Radius.circular(28.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 4,
                    color: LightAppColors.shadow,
                    offset: Offset(0, 3)),
              ]),
          height: 52,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.images.svg.search),
              const Text(
                AppString.searchProduct,
                style: LightAppTextStyle.hint,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(Assets.images.png.mainLogo.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
