import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/dimens.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
  });

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final List<String> imgList = [
    Assets.images.png.banner1.path,
    Assets.images.png.banner2.path,
    Assets.images.png.banner3.path,
    Assets.images.png.banner4.path,
  ];
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    final List<Widget> iteams = imgList
        .map((e) => Padding(
              padding: const EdgeInsets.all(AppDimens.medium),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.medium),
                child: Image.asset(
                  e,
                  fit: BoxFit.cover,
                ),
              ),
            ))
        .toList();
    int _current = 0;
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          CarouselSlider(
              carouselController: _controller,
              items: iteams,
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              )),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList
                .asMap()
                .entries
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => _controller.animateToPage(e.key),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == e.key
                                  ? Colors.black
                                  : Colors.grey),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
