import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String? input;
  Page2({super.key, this.input});
  static const id = "page2";
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
            Text(input!),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop({"data": controller.text});
                },
                child: const Text("you entered this message")),
          ],
        ),
      ),
    );
  }
}
