import 'package:flutter/material.dart';
import 'package:nav_app/page1.dart';

import 'package:nav_app/page2.dart';

Map<String, WidgetBuilder> routes = {
  Page1.id: (context) => const Page1(),
  Page2.id: (context) => const Page2()
};
