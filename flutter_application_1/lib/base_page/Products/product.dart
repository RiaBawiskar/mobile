import 'package:flutter/material.dart';

class Product {
  AssetImage img;
  String style;
  String title;
  String description;
  int price;
  int measurements;
  Product(this.img, this.description, this.price, this.title, this.measurements,[this.style]);
}