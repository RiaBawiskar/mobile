import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

import 'grid_card_product.dart';

class EgirlShoppingPage extends StatelessWidget {
  final List<Product> products = [
    Product(AssetImage('assets/images/b.jpeg'), "Product B description", 10, "Product B", 5),
    Product(AssetImage('assets/images/c.jpeg'), "Product C description", 15, "Product C", 12),
    Product(AssetImage('assets/images/d.jpeg'), "Product D description", 20, "Product D", 11),
    Product(AssetImage('assets/images/e.jpeg'), "Product E description", 23, "Product E", 14),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ProductGridWidget(products)
    );
  }
}