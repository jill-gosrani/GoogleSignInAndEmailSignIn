import 'package:flutter/material.dart';

// ignore: camel_case_types
class divider extends StatefulWidget {
  @override
  _dividerState createState() => _dividerState();
}

// ignore: camel_case_types
class _dividerState extends State<divider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
         'Divider',
         style: TextStyle(
           color: Colors.black45,
         ),
        ),
       backgroundColor: Color(0xFF64FFDA),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Divider",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                " Divider Widget is a simple Widget in Flutter that can help in separating two Containers Widget, Card Widget, etc. Divider widget, in particular, creates a simple White space showing a partition between two Container widget. The Visual representation can help in making it appealing to understand that there are two different contents on the page. According to the Flutter Docs, “A one device pixel thick horizontal line, with padding on either side”",
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Example",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.blue[900]),
                  Divider(
                    thickness: 10,
                    height: 35,
                    color: Colors.red,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.blue[100]),
                ],
              ),
            ),
            SizedBox(height:30),
            RaisedButton(
              color: Colors.red[100],
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
