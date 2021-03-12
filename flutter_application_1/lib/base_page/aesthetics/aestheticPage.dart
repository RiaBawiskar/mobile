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
        Text(item.description),
        Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            image: DecorationImage(image: item.img, fit: BoxFit.fill),
          ),
        ),
        style == "90s" ? Text("a") :
        style == "egirl" ? Text("b") :
        style == "soft" ? Text("c") : null
      ],
    )));
  }
}
