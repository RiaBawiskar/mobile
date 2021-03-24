import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/Products/product.dart';

class CardProduct extends StatelessWidget {
  final Product item;
  CardProduct(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            null;
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.topCenter,
                decoration: new BoxDecoration(
                  image: DecorationImage(image: item.img, fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 10),
              Text(
                item.title,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$${item.price}",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
