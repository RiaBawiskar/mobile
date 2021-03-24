import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

import 'cardProduct.dart';

class ProductGridWidget extends StatelessWidget {
  final List<Product> itemList;
  ProductGridWidget(this.itemList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.6,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CardProduct(itemList[index]);
        },
      ),
    );
  }
}
