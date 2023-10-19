import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/product_list_screen%20copy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: double.infinity,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductListScreen(),
              )),
          child: Text("مشاهده همه")),
    );
  }
}
