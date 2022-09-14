import 'package:flutter/material.dart';
import 'package:nav_app/page1.dart';

class Page2 extends StatelessWidget {
  String? input;
  Page2({super.key, this.input});
  static const id = "page2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(input!),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Page1.id);
                },
                child: const Text("you entered this message")),
          ],
        ),
      ),
    );
  }
}
