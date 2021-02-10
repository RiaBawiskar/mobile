
import 'package:flutter/material.dart';

import 'base_page/base_page.dart';

void main() {
  runApp(GreenThreads());
}

class GreenThreads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasePage(),
    );
  }
}