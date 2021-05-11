import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

import 'grid_card_product.dart';

class SoftShoppingPage extends StatelessWidget {
    final List<Product> products = [
    Product(AssetImage('assets/images/b.jpeg'), "Product B description", 23,
        "Product B", 5,"Pants","M"),
    Product(AssetImage('assets/images/c.jpeg'), "Product C description", 15,
        "Product C", 12,"Shoes","7"),
    Product(AssetImage('assets/images/d.jpeg'), "Product D description", 20,
        "Product D", 11,"Shirts","M"),
    Product(AssetImage('assets/images/e.jpeg'), "Product E description", 10,
        "Product E", 14,"Accessories","L"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ProductGridWidget(products)
    );
  }
}