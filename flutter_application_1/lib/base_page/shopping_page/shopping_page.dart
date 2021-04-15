import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';
import 'package:flutter_application_1/base_page/aesthetics/grid_card_product.dart';
import 'package:flutter_application_1/base_page/mainBottomAppBar.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import 'menu.dart';

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  SearchBar searchBar;

  final List<Product> products = [
    Product(AssetImage('assets/images/b.jpeg'), "Product B description", 10,
        "Product B", 5),
    Product(AssetImage('assets/images/c.jpeg'), "Product C description", 15,
        "Product C", 12),
    Product(AssetImage('assets/images/d.jpeg'), "Product D description", 20,
        "Product D", 11),
    Product(AssetImage('assets/images/e.jpeg'), "Product E description", 23,
        "Product E", 14),
  ];

  _ShoppingPageState() {
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: searchBar.build(context),
      drawer: Menu(),
      body: ProductGridWidget(products),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
