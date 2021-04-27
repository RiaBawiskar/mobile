import 'package:flutter_application_1/base_page/Products/product.dart';

class Filter {
  String value;
  List<Product> products;
  Filter(this.value, this.products);

  List<Product> sort() {
    return seperate(createCopy());
  }

  List<Product> seperate(List<Product> initialProducts){
    for(int i=0; i < this.products.length; i++){
      if(this.value != this.products[i].type){
        initialProducts.remove(this.products[i]);
      }
    }
    return initialProducts;
  }

  List<Product> createCopy() {
    List<Product> copyProducts = [];
    for (Product a in this.products) {
      copyProducts.add(a);
    }
    return copyProducts;
  }
}
