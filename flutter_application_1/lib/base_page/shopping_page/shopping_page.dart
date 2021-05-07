import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';
import 'package:flutter_application_1/base_page/aesthetics/grid_card_product.dart';
import 'package:flutter_application_1/base_page/mainBottomAppBar.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import 'menu.dart';

class ShoppingPage extends StatefulWidget {
  final ProductGridWidget a;
  @override
  _ShoppingPageState createState() => _ShoppingPageState(this.a);

  ShoppingPage(this.a);
}

class _ShoppingPageState extends State<ShoppingPage> {
  Menu menu;
  SearchBar searchBar;
  final ProductGridWidget a;

  _ShoppingPageState(this.a) {
    searchBar = new SearchBar(
      inBar: false,
      setState: setState,
      onSubmitted: null,
      buildDefaultAppBar: buildAppBar,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.green[900],
      title: Text("Shop"),
      actions: [
        searchBar.getSearchAction(context),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: null,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: searchBar.build(context),
      drawer: Menu(this.a.itemList),
      body: this.a,
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
