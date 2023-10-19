import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/get_otp_scree.dart';
import 'package:watch_store/screens/mainScreens/main_screen.dart';
import 'package:watch_store/screens/product_list_screen%20copy.dart';
import 'package:watch_store/screens/product_single_screen.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenNames.root: (context) => SendOtpScreen(),
  ScreenNames.getOtpScrren: (context) => GetOtpScreen(),
  ScreenNames.registerScreen: (context) => RegisterScreen(),
  ScreenNames.mainScreen: (context) => MainScreen(),
  ScreenNames.productListScreen: (context) =>const ProductListScreen(),
  ScreenNames.productSingleScreen: (context) =>const ProductSingleScreen(),
};
