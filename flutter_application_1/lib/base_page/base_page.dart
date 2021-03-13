import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

import 'aboutUs_page/aboutUs_page.dart';
import 'grid_card_item.dart';
import 'item.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  SearchBar searchBar;
  List<Aesthetic>itemList = [
    Aesthetic(AssetImage('assets/images/90s.jpg'), "90s"),
    Aesthetic(AssetImage('assets/images/egirl.jpeg'), "egirl"),
    Aesthetic(AssetImage('assets/images/soft.jpg'), "soft"),
  ];

  _BasePageState() {
    searchBar = new SearchBar(
      inBar: false,
      setState: setState,
      onSubmitted: null,
      buildDefaultAppBar: buildAppBar,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      backgroundColor: Colors.green[900],
      title: Text("Aesthetics"),
      actions: [
        IconButton(
          icon: Image.asset('assets/images/finalgtlogo.png'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AboutUs()));
          },
        ),
        searchBar.getSearchAction(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                  child: Text(
                'FILTERS',
                style: TextStyle(fontSize: 40, color: Colors.white),
              )),
              decoration: BoxDecoration(color: Colors.green[900]),
            ),
            ListTile(
              title: Text('Pants'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Shirts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: searchBar.build(context),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[800],
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.attach_money_rounded,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
        ),
      ),
      body: ItemGridWidget(itemList),
    );
  }
}
