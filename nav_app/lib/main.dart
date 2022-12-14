import 'package:flutter/material.dart';
import 'package:nav_app/page1.dart';
import 'package:nav_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: Page1.id, routes: routes);
  }
}
