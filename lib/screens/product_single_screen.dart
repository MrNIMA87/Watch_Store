import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/extension.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:watch_store/widgets/badge.dart';
import 'package:watch_store/widgets/custom_appbar.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: Row(
            children: [
              const CartBadge(),
              const Expanded(
                child: Text(
                  'اسم محصول',
                  style: LightAppTextStyle.productTitle,
                  textDirection: TextDirection.rtl,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.images.svg.close)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.medium),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                //image product
                Image.asset(
                  Assets.images.png.unnamed.path,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(AppDimens.medium),
                  padding: const EdgeInsets.all(AppDimens.small),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimens.medium),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'بنسر',
                        style: LightAppTextStyle.productTitle,
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        'مسواک بنسر مدل اکسترا با برس متوسط 3 عددی',
                        style: LightAppTextStyle.caption,
                        textDirection: TextDirection.rtl,
                      ),
                      const Divider(),
                      const ProductTabView(),
                      60.0.height,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.maxFinite,
          height: 66,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'تومان 63500',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(66)),
                          ),
                          child: const Center(
                            child: Text(
                              '20 %',
                              style: LightAppTextStyle.tagTitle,
                            ),
                          ),
                        )
                      ],
                    )
                    //old price
                    ,
                    const Text(
                      '122,000',
                      style: LightAppTextStyle.odlPrice,
                    ),
                  ],
                ),
              ),
              //button for buy product
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'افزودن به سبد خرید',
                  style: LightAppTextStyle.mainButton.copyWith(fontWeight: FontWeight.w400, fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductTabView extends StatefulWidget {
  const ProductTabView({super.key});

  @override
  State<ProductTabView> createState() => _ProductTabViewState();
}

class _ProductTabViewState extends State<ProductTabView> {
  var selectedTabIndex = 2;
  List<String> tabs = ['خصوصیات', 'نقد و بررسی', 'نظرات'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: 50,
          child: ListView.builder(
            itemCount: 3,
            itemExtent: MediaQuery.sizeOf(context).width / 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => setState(() => selectedTabIndex = index),
              child: Container(
                padding: const EdgeInsets.all(AppDimens.medium),
                child: Text(
                  tabs[index],
                  style: index == selectedTabIndex
                      ? LightAppTextStyle.selectedTab
                      : LightAppTextStyle.unselectedTab,
                ),
              ),
            ),
          ),
        ),
        IndexedStack(
          index: selectedTabIndex,
          children: const [
            Features(),
            Review(),
            Comment(),
          ],
        )
      ],
    );
  }
}

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
        'خصویات لف لفا مماف فا افخ نفان ک ومسب ئم یئبن یسمنلنقلقث  لثتلغفاتضه ن');
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
