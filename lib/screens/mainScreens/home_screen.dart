import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/resource/dimens.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:watch_store/resource/strings.dart';
import 'package:watch_store/screens/product_list_screen%20copy.dart';
import 'package:watch_store/widgets/search_bar.dart';

import '../../widgets/app_slider.dart';

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
              AppSearchBar(onTap: () {  },),
              const AppSlider()
            ],
          ),
        ),
      ),
    );
  }
}

