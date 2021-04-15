import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 50,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[900]),
              child: null,
            ),
          ),
          Container(
            height: 360,
            child: DropdownButton<String>(
              itemHeight: 100,
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                "Filters",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  _chosenValue = value;
                });
              },
            ),
          ),
          Container(
            height: 360,
            child: DropdownButton<String>(
              itemHeight: 100,
              items: <String>['One', 'Two', 'Free', 'Four', 'Five', 'Six',]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
              }).toList(),
              hint: Text(
                "Sort By",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  _chosenValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
