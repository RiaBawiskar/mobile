import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

import '../mainBottomAppBar.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  ProductPage(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text(this.product.title),
        backgroundColor: Colors.green[800],
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
                image: DecorationImage(image: this.product.img, fit: BoxFit.fill),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(this.product.type,style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(this.product.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("\$${this.product.price}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(this.product.description, style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Size " + this.product.size, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Measurements: " + "${this.product.measurements}", style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
