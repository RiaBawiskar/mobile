import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("GreenThreads Co."),
            new RaisedButton(child: Text("SignUp")
                //onPressed: null
                ),
            new RaisedButton(child: Text("Login")
                //onPressed: null
                )
          ],
        ),
      ),
    );
  }
}
