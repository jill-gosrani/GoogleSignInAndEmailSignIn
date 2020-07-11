import 'package:flutter/material.dart';

class Sizedbox extends StatefulWidget {
  @override
  _SizedboxState createState() => _SizedboxState();
}

class _SizedboxState extends State<Sizedbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "SizedBox",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Given a child, this widget forces its child to have a specific width and/or height (assuming values are permitted by this widget's parent). If either the width or height is null, this widget will try to size itself to match the child's size in that dimension. If the child's size depends on the size of its parent, the height and width must be provided.",
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Example",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text("Images size is given through SizedBox"),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    width: 250,
                    child: Image.asset(
                      "images/flutter.jpeg",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Text(
                        "There are 3 SizedBoxes in this Page,Including this Text"),
                  ),
                  SizedBox(
                    height: 230,
                    width: double.maxFinite,
                    child: Container(
                      color: Colors.limeAccent,
                      padding: EdgeInsets.all(100),
                      child: Text("data"),
                    ),
                  )
                ],
              ),
            ),
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
