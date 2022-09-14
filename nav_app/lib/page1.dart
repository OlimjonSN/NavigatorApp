import 'package:flutter/material.dart';
import 'package:nav_app/page2.dart';

// ignore: must_be_immutable
class Page1 extends StatefulWidget {
  const Page1({super.key});
  static const id = "page1";

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController control = TextEditingController();

  Future _openPage2() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Page2(input: control.text);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: control,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))),
              ),
              TextButton(
                  onPressed: _openPage2,
                  // () {
                  //   Navigator.pushNamed(context, Page2.id);
                  // },
                  child: const Text("page1")),
            ],
          ),
        ),
      ),
    );
  }
}
