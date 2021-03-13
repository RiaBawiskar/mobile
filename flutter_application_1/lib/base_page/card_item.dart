import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/item.dart';

import 'aesthetics/aestheticPage.dart';

class CardItem extends StatelessWidget {
  final List<String> style = ["90s","egirl","soft"];
  final Aesthetic item;
  CardItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            for(int i=0; i < style.length;i++){
              if(item.description == style[i]){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AestheticPage(style[i], item)));
              }
            }
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
              SizedBox(height: 20),
              Text(
                item.description,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
