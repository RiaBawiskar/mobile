import 'package:flutter/material.dart';

class Page90s extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "If you wore a bomber jacket, fanny pack, flannels in the 90’s, you were automatically the coolest kid in town. 90’s fashion was heavily influenced by music genres like hip-hop, indie rock, and grunge.",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
