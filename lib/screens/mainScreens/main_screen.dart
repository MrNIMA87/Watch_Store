import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/screens/mainScreens/basket_screen.dart';
import 'package:watch_store/screens/mainScreens/home_screen.dart';
import 'package:watch_store/screens/mainScreens/profile_screen.dart';
import 'package:watch_store/screens/product_list_screen%20copy.dart';
import 'package:watch_store/widgets/btm_nav_item.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtmNavScreenIndex.home;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double btmNavHeight = size.height * .1;
    return Scaffold(
      body: Stack(
        children: [
          //body
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: btmNavHeight,
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  Navigator(
                    onGenerateRoute: (settings) => MaterialPageRoute(
                      builder: (context) =>const HomeScreen(),
                    ),
                  ),
                  BasketScreen(),
                  ProfileScreen(),
                ],
              )),
          //btmNav
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: LightAppColors.btmNavColor,
              height: btmNavHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //profile
                  BtmNavItem(
                    iconSvgPath: Assets.images.svg.user,
                    text: 'پروفایل',
                    isActive: selectedIndex == BtmNavScreenIndex.profile,
                    onTap: () =>
                        btmNavOnPressed(index: BtmNavScreenIndex.profile),
                  ),
                  //basket
                  BtmNavItem(
                    iconSvgPath: Assets.images.svg.basket,
                    text: 'سبد خرید',
                    isActive: selectedIndex == BtmNavScreenIndex.basket,
                    onTap: () =>
                        btmNavOnPressed(index: BtmNavScreenIndex.basket),
                  ),
                  //home

                  BtmNavItem(
                    iconSvgPath: Assets.images.svg.home,
                    text: 'خانه',
                    isActive: selectedIndex == BtmNavScreenIndex.home,
                    onTap: () => btmNavOnPressed(index: BtmNavScreenIndex.home),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
    });
  }
}
