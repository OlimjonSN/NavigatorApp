import 'package:flutter/material.dart';
import 'package:nav_app/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  static const id = "page1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Page2.id);
                },
                child: const Text("page1")),
          ],
        ),
      ),
    );
  }
}
