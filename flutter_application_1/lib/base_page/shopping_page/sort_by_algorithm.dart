import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

class SortBy {
  String value;
  List<Product> productsLowtoHigh;
  List<Product> productsHightoLow;
  List<Product> products;
  final List<Product> originalList = [
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

  SortBy(this.value, this.products);

  List<Product> sort() {
    if (this.value == "Price Low to High") {
      this.productsLowtoHigh = [];
      lowToHigh(createCopy());
      return this.productsLowtoHigh;
    } else if(this.value == "Price High to Low") {
      this.productsHightoLow = [];
      highToLow(createCopy());
      return this.productsHightoLow;
    }
    else{
      return this.originalList;
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
    void highToLow(List<Product> copyOfProducts) {
    if (copyOfProducts.length == 0) {
      return;
    } else {
      int indexHigh = 0;
      for (int i = 0; i < copyOfProducts.length; i++) {
        if (copyOfProducts[i].price > copyOfProducts[indexHigh].price) {
          indexHigh = i;
        }
      }
      this.productsHightoLow.add(copyOfProducts[indexHigh]);
      copyOfProducts.removeAt(indexHigh);
      highToLow(copyOfProducts);
    }
  }
}
