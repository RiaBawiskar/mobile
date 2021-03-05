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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontFamily: "futura-pt",
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                            ),
                      ),
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/a.png',
                              height: 250,
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
                                  child: Text(
                                    "Like Clothes?… We do too!",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  height: 50,
                                  width: 150,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 150,
                                  height: 130,
                                  color: Colors.grey[300],
                                  child: Text(
                                    "Green Threads Co. is your one stop shop for unique trendy items. From Crew necks to jeans we’ll have some items in store that you won’t want to live without.",
                                    style: TextStyle(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
