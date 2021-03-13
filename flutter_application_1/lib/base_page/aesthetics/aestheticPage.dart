import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/item.dart';

import '../base_page.dart';

class AestheticPage extends StatelessWidget {
  final String style;
  final Aesthetic item;
  AestheticPage(this.style, this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[200],
        appBar: AppBar(
          title: Text(item.description),
          backgroundColor: Colors.green[900],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BasePage()));
            },
          ),
        ),
        body: Container(
            child: Column(
          children: [
            Text(
              item.description,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              width: 300,
              height: 300,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                image: DecorationImage(image: item.img, fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 8),
            style == "90s"
                ? Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "If you wore a bomber jacket, fanny pack, flannels in the 90’s, you were automatically the coolest kid in town. 90’s fashion was heavily influenced by music genres like hip-hop, indie rock, and grunge.",
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          )),
                      RaisedButton(
                          onPressed: () {
                            null;
                          },
                          child: Text("Click to view 90s Products"))
                    ],
                  )
                : style == "egirl"
                    ? Column(
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
                      )
                    : style == "soft"
                        ? Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "A simplistic and casual look, the soft aesthetic is perfect for those curious to try new fashion styles. Lighter shades of color and oversized jeans are a sure staple that makes this aesthetic so irresistible!",
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  )),
                              RaisedButton(
                                  onPressed: () {
                                    null;
                                  },
                                  child: Text("Click to view soft Products"))
                            ],
                          )
                        : null
          ],
        )));
  }
}
