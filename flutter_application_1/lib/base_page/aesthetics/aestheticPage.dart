import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/item.dart';

import '../base_page.dart';
import '90sPage.dart';
import 'egirlPage.dart';
import 'softPage.dart';

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
                ? Page90s()
                : style == "egirl"
                    ? EgirlPage()
                    : style == "soft"
                        ? SoftPage()
                        : null
          ],
        ),
      ),
    );
  }
}
