import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/item.dart';
import 'package:flutter_application_1/base_page/mainBottomAppBar.dart';
import '../base_page.dart';
import '90sShoppingPage.dart';
import 'aestheticPage.dart';
import 'egirlShoppingPage.dart';
import 'softShoppingPage.dart';

class AestheticShoppingPage extends StatelessWidget {
  final String style;
  final Aesthetic item;
  AestheticShoppingPage(this.style, this.item);

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
          actions: [
            Center(
                child: Text("Read More",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300))),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        AestheticPage(this.style, this.item)));
              },
            ),
          ],
        ),
        bottomNavigationBar:MainBottomBar(),
        body: style == "90s"
            ? ShoppingPage90s()
            : style == "egirl"
                ? EgirlShoppingPage()
                : style == "soft"
                    ? SoftShoppingPage()
                    : null);
  }
}
