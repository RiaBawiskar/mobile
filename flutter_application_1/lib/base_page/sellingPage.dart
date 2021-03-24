import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/mainBottomAppBar.dart';

class SellingPage extends StatelessWidget {
  final TextStyle steps = TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text("Sell"),
        backgroundColor: Colors.green[800],
      ),
      bottomNavigationBar: MainBottomBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Are you interested in selling clothes on GreenThreads? Follow the steps below in order to become a seller.",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Text(
                "1. Use contact information(text/email/DM) to send product pictures to team",
                style: steps,
              ),
              Text(
                "2. Team approves object for further review(possible categorize by aesthetic)",
                style: steps,
              ),
              Text(
                "3. Team buys from seller at negotiated price",
                style: steps,
              ),
              Text(
                "4. Seller sends over product to team(how tho)",
                style: steps,
              ),
              Text(
                "5. After approval, team uploads product pics to app, and price(they decide)",
                style: steps,
              ),
              Text(
                "6. Seller doesn't have to worry about getting object sold",
                style: steps,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
