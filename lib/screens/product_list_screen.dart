import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/widgets/product_item.dart';

import '../gen/assets.gen.dart';
import '../widgets/badge.dart';
import '../widgets/custom_appbar.dart';

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
              const CartBadge(
                count: 1,
              ),
              Row(
                children: [
                  const Text("پرفروشترین ها"),
                  AppDimens.small.width,
                  SvgPicture.asset(Assets.images.svg.sort),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.images.svg.close),
              ),
            ],
          ),
        ),
        body: const Column(
          children: [TagList(), ProductGridView()],
        ),
      ),
    );
  }
}



//


//Tag List
class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.medium),
      child: SizedBox(
        width: double.maxFinite,
        height: 25,
        child: ListView.builder(
          reverse: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: AppDimens.small),
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.large),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppDimens.large)),
                  color: Colors.blue),
              child: Text(
                '$index نیوفورس',
                style: LightAppTextStyle.tagTitle,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 0.65
        ),
        itemBuilder: (context, index) =>
            ProductItem(productName: 'Product', price: index + 000,),
      ),
    );
  }
}
