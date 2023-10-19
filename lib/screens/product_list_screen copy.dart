import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        height: double.infinity,
        width: double.infinity,
        child: Text(
          "لیست محصولات",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
