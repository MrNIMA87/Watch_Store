import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/widgets/product_item.dart';

import '../gen/assets.gen.dart';

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

//
class CartBadge extends StatelessWidget {
  const CartBadge({super.key, this.count = 0});
  final count;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(width: 32, height: 32),
        SvgPicture.asset(
          Assets.images.svg.cart,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        Visibility(
          visible: count == 0 ? false : true,
          child: Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4.5),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$count',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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
