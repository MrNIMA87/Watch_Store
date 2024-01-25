import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/resource/colors.dart';
import 'package:watch_store/screens/mainScreens/cart_screen.dart';
import 'package:watch_store/screens/mainScreens/home_screen.dart';
import 'package:watch_store/screens/mainScreens/profile_screen.dart';
import 'package:watch_store/widgets/btm_nav_item.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _routeHistory = [BtmNavScreenIndex.home];
  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _basket = GlobalKey();
  final GlobalKey<NavigatorState> _profile = GlobalKey();
  int selectedIndex = BtmNavScreenIndex.home;

  late final map = {
    BtmNavScreenIndex.home: _homeKey,
    BtmNavScreenIndex.basket: _basket,
    BtmNavScreenIndex.profile: _profile,
  };

  Future<bool> _onWillPop() async {
    if (map[selectedIndex]!.currentState!.canPop()) {
      map[selectedIndex]!.currentState!.pop();
    } else if (_routeHistory.length > 1) {
      setState(() {
        _routeHistory.removeLast();
        selectedIndex = _routeHistory.last;
      });
    } else {
      return false;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double btmNavHeight = size.height * .1;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            Navigator(
              key: _homeKey,
              onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ),
            Navigator(
              key: _basket,
              onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            ),
            Navigator(
              key: _profile,
              onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            ),
          ],
        ),
        //btmNavBar
        bottomNavigationBar: Container(
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
                onTap: () => btmNavOnPressed(index: BtmNavScreenIndex.profile),
              ),
              //basket
              BtmNavItem(
                iconSvgPath: Assets.images.svg.cart,
                text: 'سبد خرید',
                isActive: selectedIndex == BtmNavScreenIndex.basket,
                onTap: () => btmNavOnPressed(index: BtmNavScreenIndex.basket),
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
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
      _routeHistory.add(selectedIndex);
    });
  }
}
