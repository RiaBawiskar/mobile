import 'package:flutter/material.dart';

class Product {
  AssetImage img;
  String style;
  String title;
  String description;
  String size;
  int price;
  int measurements;
  String type;
  Product(this.img, this.description, this.price, this.title, this.measurements,this.type,this.size,[this.style]);
}