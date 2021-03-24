import 'package:flutter/material.dart';

import '../base_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen[200],
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BasePage()));
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/a.png',
                              height: 300,
                            ),
                            width: 300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Like Clothes?… We do too!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Green Threads Co. is your one stop shop for unique trendy items. From Crew necks to jeans we’ll have some items in store that you won’t want to live without.",
                                      style: TextStyle(fontSize: 11.5),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/d.jpeg',
                              height: 300,
                            ),
                            width: 300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  color: Colors.grey[300],
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Our page",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13
                                          ),
                                    ),
                                  ),
                                  height: 35,
                                  width: 120,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 120,
                                  height: 225,
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "If you want to get some more ideas about your style or the vibe of clothes you want to buy, check out our home page where you can view a variety of aesthetics that we carry. Click X to begin!",
                                      style: TextStyle(fontSize: 11.5),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
