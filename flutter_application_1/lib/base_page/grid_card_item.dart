import 'package:flutter/material.dart';

import 'card_item.dart';
import 'item.dart';

class ItemGridWidget extends StatelessWidget {
  final List<Aesthetic> itemList;
  ItemGridWidget(this.itemList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.6,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CardItem(itemList[index]);
        },
      ),
    );
  }
}
