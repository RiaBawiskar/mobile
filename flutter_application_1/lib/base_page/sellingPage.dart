import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_page/mainBottomAppBar.dart';

class SellingPage extends StatefulWidget {
  @override
  _SellingPageState createState() => _SellingPageState();
}

class _SellingPageState extends State<SellingPage> {
  final _firstNameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _emailController = TextEditingController();

  final _titleController = TextEditingController();

  final _descriptionController = TextEditingController();

  final _measurementController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text("Sell"),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        leading: Text(""),
      ),
      bottomNavigationBar: MainBottomBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _firstNameController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "First Name",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _lastNameController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Last Name",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _emailController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _titleController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Title of Product",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _descriptionController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Description of Product",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _measurementController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "Measurements",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder()),
            ),
            Row(children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.green[200],
                    onPressed: () => print("Hello"),
                    child: Text(
                      "Upload a Picture",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.green[200],
                    onPressed: () => print("Hello"),
                    child: Text(
                      "Take a Picture",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                )
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    color: Colors.green[200],
                    onPressed: () => print("Hello"),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Submit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    shape: Border.all(),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
