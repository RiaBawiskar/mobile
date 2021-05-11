import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/aesthetics/grid_card_product.dart';
import 'package:flutter_application_1/base_page/base_page.dart';

import 'Products/product.dart';
import 'sellingPage.dart';
import 'shopping_page/shopping_page.dart';

class MainBottomBar extends StatelessWidget {
    final List<Product> products = [
    Product(AssetImage('assets/images/b.jpeg'), "Product B description", 23,
        "Product B", 5,"Pants"),
    Product(AssetImage('assets/images/c.jpeg'), "Product C description", 15,
        "Product C", 12,"Shirts"),
    Product(AssetImage('assets/images/d.jpeg'), "Product D description", 20,
        "Product D", 11,"Shoes"),
    Product(AssetImage('assets/images/e.jpeg'), "Product E description", 10,
        "Product E", 14,"Accessories"),
    Product(AssetImage('assets/images/f.jpeg'), "Product F description", 8,
        "Product F", 7,"Pants"),
    Product(AssetImage('assets/images/g.jpeg'), "Product G description", 13,
        "Product G", 9,"Accessories"),
    
  ];
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
                  MaterialPageRoute(builder: (context) => ShoppingPage(ProductGridWidget(this.products))));
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
