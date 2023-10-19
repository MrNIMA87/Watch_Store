import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
            child: Container(
              color: Colors.red,
              height: btmNavHeight,
            ),
          ),
          //btmNav
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.white,
              height: btmNavHeight,
            ),
          ),
        ],
      ),
    );
  }
}
