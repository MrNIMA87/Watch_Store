import 'package:flutter/material.dart';
import 'package:watch_store/screens/product_single_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(

      child: SizedBox(
        width: 200,
        height: 100,
        child: ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProductSingleScreen(),
                )),
            child: Text("مشاهده همه")),
      ),
    );
  }
}
