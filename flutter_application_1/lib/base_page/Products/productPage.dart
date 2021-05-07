import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

import '../mainBottomAppBar.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  bool addedToCart = false;
  ProductPage(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text(this.product.title),
        backgroundColor: Colors.green[800],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: (){
              if(addedToCart){
                print("AddedToCart");
              }
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(15),
              width: 300,
              height: 300,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                image:
                    DecorationImage(image: this.product.img, fit: BoxFit.fill),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child:
                      Text(this.product.type, style: TextStyle(fontSize: 15)),
                ),
                Text(this.product.title,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("\$${this.product.price}",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(this.product.description,
                      style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Size " + this.product.size,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text("Measurements: " + "${this.product.measurements}",
                      style: TextStyle(fontSize: 15)),
                ),
                RaisedButton(
                  padding: EdgeInsets.all(10),
                  color: Colors.green[200],
                  onPressed: () => addedToCart = true,
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
