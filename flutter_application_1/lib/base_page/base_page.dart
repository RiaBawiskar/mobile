import 'package:flutter/material.dart';

import 'grid_card_item.dart';
import 'item.dart';

class BasePage extends StatelessWidget {
  final appbar = AppBar(
    actions: [],
  );
  List<Item> itemList = [
    Item("IMG", "DESCRIPTION", "PRICE"),
    Item("IMG", "DESCRIPTION", "PRICE"),
    Item("IMG", "DESCRIPTION", "PRICE")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("GreenThreads"),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.attach_money_rounded,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
        ),
      ),
      body: ItemGridWidget(itemList),
    );
  }
}
