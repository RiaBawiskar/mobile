import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';
import 'package:flutter_application_1/base_page/aesthetics/grid_card_product.dart';
import 'package:flutter_application_1/base_page/shopping_page/shopping_page.dart';
import 'package:flutter_application_1/base_page/shopping_page/filter_algorithm.dart';

import 'sort_by_algorithm.dart';

class Menu extends StatefulWidget {
  final List<Product> products;

  @override
  _MenuState createState() => _MenuState(this.products);
  Menu(this.products);
}

class _MenuState extends State<Menu> {
  Color c;
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
            height: 110,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[900]),
              child: null,
            ),
          ),
          Container(
            height: 350,
            child: ListView(
            padding: EdgeInsets.all(10.0),
            children: [
              Text(
                "Filters",
                style: TextStyle(fontSize: 65)
                ),
              /* Ink(
                color: Colors.red,
                child: ListTile(
                  title: Text("test")
                ),
              ), */
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text(
                  "Shirts",
                  style: TextStyle(
                    fontSize: 23, 
                    color: Colors.black,
                  )),
                onTap: (){
                _chosenValue = "Shirts";
                Filter newList = Filter(_chosenValue, this.products);
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
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text("Pants",style: TextStyle(fontSize: 23)),
                onTap: (){
                _chosenValue = "Pants";
                Filter newList = Filter(_chosenValue, this.products);
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
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text("Shoes",style: TextStyle(fontSize: 23)),
                onTap: (){
                _chosenValue = "Shoes";
                Filter newList = Filter(_chosenValue, this.products);
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
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text("Accessories",style: TextStyle(fontSize: 23)),
                onTap: (){
                _chosenValue = "Accessories";

                Filter newList = Filter(_chosenValue, this.products);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ShoppingPage(ProductGridWidget(newList.sort())),
                  ),
                );
                print(this.products);
              },
              ),
            ]
            ),

          ),
          Container(
            height:330,
            child: ListView(
            padding: EdgeInsets.all(10.0),
            children: [
              Text(
                "Sort By",
                style: TextStyle(fontSize: 65)
                ),
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text("Price Low to High",style: TextStyle(fontSize: 23)),
                onTap: (){
                _chosenValue = "Price Low to High";
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
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text("Price High to Low",style: TextStyle(fontSize: 23)),
                onTap: (){
                _chosenValue = "Price High to Low";
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
              ListTile(
                contentPadding: EdgeInsets.all(5.0),
                leading: Icon(Icons.horizontal_rule),
                title: Text("Most Popular",style: TextStyle(fontSize: 23)),
                onTap: (){print("this should word");}
              ),
            ]
            ),
            ),
          Container(
            height:50,
            padding: EdgeInsets.all(5.0),
            child: ElevatedButton(
              child: Text('refresh'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green[900])),
              onPressed: () {
                SortBy newList = SortBy("refresh", this.products);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ShoppingPage(ProductGridWidget(newList.sort())),
                  ));},
            )
              
            ),
        ],
      ),
    );
  }
}
