import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/mainBottomAppBar.dart';

class SellingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sell"), backgroundColor: Colors.green[800],),
      bottomNavigationBar: MainBottomBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Are you interested in selling clothes on GreenThreads? Follow the steps below in order to become a seller."),
            Text(
                "1. Use contact information(text/email/DM) to send product pictures to team"),
            Text(
                "2. Team approves object for further review(possible categorize by aesthetic)"),
            Text("3. Team buys from seller at negotiated price"),
            Text("4. Seller sends over product to team(how tho)"),
            Text(
                "5. After approval, team uploads product pics to app, and price(they decide)"),
            Text("6. Seller doesn't have to worry about getting object sold"),
          ],
        ),
      ),
    );
  }
}
