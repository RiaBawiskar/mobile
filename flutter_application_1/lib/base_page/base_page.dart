import 'package:flutter/material.dart';

import 'grid_card_item.dart';
import 'item.dart';

class BasePage extends StatelessWidget {
  final appbar = AppBar(
    title: Text("GreenThreads"),
    actions: [
      IconButton(icon: Icon(Icons.menu), onPressed: null),
    ],
  );
  List<Item> itemList = [
    Item("IMG", "DESCRIPTION", "PRICE"),
    Item("IMG", "DESCRIPTION", "PRICE"),
    Item("IMG", "DESCRIPTION", "PRICE")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          SizedBox(height: appbar.preferredSize.height, child: appbar),
      body: ItemGridWidget(itemList),
    );
  }
}
