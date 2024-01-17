import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/widgets/custom_appbar.dart';

import '../../widgets/shopping_cart.item.dart';
import '../../widgets/surface_continer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppString.basket,
              style: LightAppTextStyle.title,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: size.height * 0.1,
              padding: const EdgeInsets.all(AppDimens.medium),
              margin: const EdgeInsets.only(top: AppDimens.medium),
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 3),
                    blurRadius: 3,
                  )
                ],
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.images.svg.leftArrow),
                  ),
                  //
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.sendToAddress,
                          style: LightAppTextStyle.caption,
                        ),
                        FittedBox(
                          child: Text(
                            AppString.lorem,
                            style: LightAppTextStyle.caption,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SuraFace(
                    child: ShoppingCartItem(
                      price: 10000,
                      oldPrice: 50000,
                      productTitle: 'ساعت هوشمند شیاومی',
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Row(
                children: [
                  //
                  Text(
                    'مجموع ${505122.separateWithComma} تومان',
                    style: LightAppTextStyle.title,
                  ),
                  const Expanded(child: SizedBox()),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                      elevation: MaterialStatePropertyAll(0.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'ادامه فرآیند خرید',
                      style: LightAppTextStyle.mainButton,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
