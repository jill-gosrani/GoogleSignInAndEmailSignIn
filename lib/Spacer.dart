import 'package:flutter/material.dart';

// ignore: camel_case_types
class spacer extends StatefulWidget {
  @override
  _spacerState createState() => _spacerState();
}

// ignore: camel_case_types
class _spacerState extends State<spacer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Spacer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                " Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column. In short, If you want to fill space between widgets then use the spacer().For example, In a row, if we want to put space between two widgets such that it occupies all remaining space.",
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
              child: Row(
                children: [
                  Container(width: 40, height: 40, color: Colors.blue[900]),
                  Spacer(
                    flex: 1,
                  ),
                  Container(width: 40, height: 40, color: Colors.blue[900]),
                  Spacer(flex: 3),
                  Container(width: 40, height: 40, color: Colors.blue[900]),
                ],
              ),
            ),
            SizedBox(height:30),
            RaisedButton(
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
