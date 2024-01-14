import 'package:flutter/material.dart';
import 'package:watch_store/components/extension.dart';

import '../components/text_style.dart';
import '../gen/assets.gen.dart';
import '../resource/colors.dart';
import '../resource/dimens.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productName,
    required this.price,
    this.oldPrice = 0,
    this.disCount = 0,
    this.timer = 0,
  });
  final productName;
  final price;
  final oldPrice;
  final disCount;
  final timer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.medium),
      margin: const EdgeInsets.all(8.0),
      width: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: LightAppColors.productBgGradient),
        borderRadius: BorderRadius.circular(AppDimens.medium),
      ),
      child: Column(
        children: [
          Image.asset(Assets.images.png.unnamed.path),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              productName.toString(),
              style: LightAppTextStyle.productTitle,
            ),
          ),
          AppDimens.medium.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${price.toString()} تومان',
                    style: LightAppTextStyle.title,
                  ),
                  //
                  Visibility(
                    visible: disCount > 0 ? true : false,
                    child: Text(
                      oldPrice.toString(),
                      style: LightAppTextStyle.odlPrice,
                    ),
                  )
                ],
              ),
              Visibility(
                visible: disCount > 0 ? true : false,
                child: Container(
                  padding: const EdgeInsets.all(AppDimens.small * .5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.red,
                  ),
                  child: Text('$disCount %'),
                ),
              ),
              //Timer
            ],
          ),
          AppDimens.large.height,
          Visibility(
            visible: disCount > 0 ? true : false,
            child: Container(
              height: 2,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          AppDimens.medium.height,
          Visibility(
            visible:  timer > 0? true : false,
            child: Text(
              timer.toString(),
              style: LightAppTextStyle.productTimer,
            ),
          )
        ],
      ),
    );
  }
}
