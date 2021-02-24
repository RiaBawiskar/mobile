import 'package:flutter/material.dart';

import '../base_page.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Colors.green[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "GreenThreads",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Image.asset('assets/images/anika.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Anika Gurbani: Chief Executive Officer",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center
                    ),
                  ),
                  Image.asset('assets/images/ashley.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Ashley Chen: Chief Operating Officer",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center
                    ),
                  ),
                  Image.asset('assets/images/ankitha.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Ankitha Lingamaneni: Chief Financial Officer",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center
                    ),
                  ),
                  Image.asset('assets/images/teagan.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Teagan Pahl: Chief Of Administration",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
