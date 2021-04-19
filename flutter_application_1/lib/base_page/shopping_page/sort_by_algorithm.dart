import 'package:flutter_application_1/base_page/Products/product.dart';

class SortBy{
  String value;
  List<Product> productsLowtoHigh;
  List<Product> products;
  List<Product> copyOfProducts;
  SortBy(this.value,this.products){
    for(Product a in products){
      copyOfProducts.add(a);
    }
  }

  void sort(){
    if(this.value == "Price Low to High"){
      lowToHigh();
    }
  }
  void lowToHigh(){
  }
}
/*       Product lowestPrice = this.copyOfProducts[0];
      for(int i=0; i < this.products.length;i++){
      if(lowestPrice.price > this.copyOfProducts[i].price){
        lowestPrice = this.copyOfProducts[i];
        this.copyOfProducts.removeAt(i);
      }
    }}
    productsLowtoHigh.add(lowestPrice);
    lowToHigh(lowestPrice) */