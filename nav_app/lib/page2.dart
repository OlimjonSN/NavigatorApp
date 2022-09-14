import 'package:flutter/material.dart';
import 'package:nav_app/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static const id = "page2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Page1.id);
                },
                child: const Text("page2")),
          ],
        ),
      ),
    );
  }
}
