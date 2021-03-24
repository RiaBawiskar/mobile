import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

void main() {
  runApp(GreenThreads());
}

class GreenThreads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Poppins')
    );
  }
}
