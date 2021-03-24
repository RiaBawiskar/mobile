import 'package:flutter/material.dart';

class SoftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "A simplistic and casual look, the soft aesthetic is perfect for those curious to try new fashion styles. Lighter shades of color and oversized jeans are a sure staple that makes this aesthetic so irresistible!",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
