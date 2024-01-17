
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/widgets/surface_continer.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';
import '../resource/colors.dart';

class ShoppingCartItem extends StatelessWidget {
  ShoppingCartItem(
      {super.key,
      required this.productTitle,
      required this.price,
      required this.oldPrice});
  int count = 1;
  final String productTitle;
  final int price;
  final int oldPrice;
  @override
  Widget build(BuildContext context) {
    return SuraFace(
      child: Row(
        children: [
          Expanded(
            child: FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //
                  Text(
                    'ساعت شیاومی مدل 1550',
                    style:
                        LightAppTextStyle.productTitle.copyWith(fontSize: 12),
                  ),
                  //
                  Text(
                    'قیمت : ${price.separateWithComma} تومن ',
                    style: LightAppTextStyle.caption,
                  ),
                  //
                  Text(
                    'با تخفیف : ${oldPrice.separateWithComma} تومن',
                    style: LightAppTextStyle.caption
                        .copyWith(color: LightAppColors.primaryColor),
                  ),
                  //d
                  const Divider(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Assets.images.svg.delete),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Assets.images.svg.minus),
                      ),
                      Text('عدد $count'),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(Assets.images.svg.plus),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            Assets.images.png.unnamed.path,
            height: 110,
          ),
        ],
      ),
    );
  }
}
