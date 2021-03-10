import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/item.dart';

class CardItem extends StatelessWidget {
  final Aesthetic item;
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
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  image: DecorationImage(image: item.img, fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 6),
              Text(
                item.description,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
