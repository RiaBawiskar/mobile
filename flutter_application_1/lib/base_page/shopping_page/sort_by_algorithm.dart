import 'package:flutter_application_1/base_page/Products/product.dart';

class SortBy {
  String value;
  List<Product> productsLowtoHigh;
  List<Product> products;
  SortBy(this.value, this.products);

  List<Product> sort() {
    if (this.value == "Price Low to High") {
      this.productsLowtoHigh = [];
      lowToHigh(createCopy());
      return this.productsLowtoHigh;
    } else {
      return null;
    }
  }

  List<Product> createCopy() {
    List<Product> copyProducts = [];
    for (Product a in this.products) {
      copyProducts.add(a);
    }
    return copyProducts;
  }

  void lowToHigh(List<Product> copyOfProducts) {
    if (copyOfProducts.length == 0) {
      return;
    } else {
      int indexLow = 0;
      for (int i = 0; i < copyOfProducts.length; i++) {
        if (copyOfProducts[i].price < copyOfProducts[indexLow].price) {
          indexLow = i;
        }
      }
      this.productsLowtoHigh.add(copyOfProducts[indexLow]);
      copyOfProducts.removeAt(indexLow);
      lowToHigh(copyOfProducts);
    }
  }
}
