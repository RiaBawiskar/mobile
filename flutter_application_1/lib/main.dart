import 'package:flutter/material.dart';

import 'base_page/welcome_page/welcome.dart';

void main() {
  runApp(GreenThreads());
}

class GreenThreads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}
