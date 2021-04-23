import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';
import 'package:flutter_application_1/base_page/aesthetics/grid_card_product.dart';
import 'package:flutter_application_1/base_page/shopping_page/shopping_page.dart';
import 'package:flutter_application_1/base_page/shopping_page/sort_by_algorithm.dart';

class Menu extends StatefulWidget {
  final List<Product> products;
  @override
  _MenuState createState() => _MenuState(this.products);
  Menu(this.products);
}

class _MenuState extends State<Menu> {
  String _chosenValue;
  List<Product> products;
  _MenuState(this.products);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 50,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[900]),
              child: null,
            ),
          ),
          Container(
            height: 360,
            child: DropdownButton<String>(
              itemHeight: 100,
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                "Filters",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  _chosenValue = value;
                });
              },
            ),
          ),
          Container(
            height: 360,
            child: DropdownButton<String>(
              itemHeight: 100,
              items: <String>[
                'Price Low to High',
                'Price High to Low',
                'Free',
                'Four',
                'Five',
                'Six',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                "Sort By",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                _chosenValue = value;
                SortBy newList = SortBy(_chosenValue, this.products);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ShoppingPage(ProductGridWidget(newList.sort())),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
