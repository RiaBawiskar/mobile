import 'package:flutter/material.dart';

class EgirlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Like wearing black and mixed metals? "E-girls" are know for wearing darker colors and outfits that have a more scary, grungy vibe to them.  These girls often like to wear ripped jeans, belts with metal accents, cropped tee’s, and black and white stripes. ',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
            onPressed: () {
              null;
            },
            child: Text("Click to view egirl Products"))
      ],
    );
  }
}
