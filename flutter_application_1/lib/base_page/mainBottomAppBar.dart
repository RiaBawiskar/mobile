import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/base_page.dart';

import 'sellingPage.dart';
import 'shopping_page/shopping_page.dart';

class MainBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green[800],
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BasePage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShoppingPage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.attach_money_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SellingPage()));
            },
          ),
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
    );
  }
}
