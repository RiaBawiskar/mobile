import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/item.dart';

class CardItem extends StatelessWidget {
  final Item item;
  CardItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => null,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              item.img,
              SizedBox(height: 6),
              Text(item.description + item.price),
              SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}
