import 'package:flutter/material.dart';

// ignore: camel_case_types
class tooltip extends StatefulWidget {
  @override
  _tooltipState createState() => _tooltipState();
}

// ignore: camel_case_types
class _tooltipState extends State<tooltip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Tool Tip",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                " In Flutter, Tooltip widget is a material design tooltip used to let user know about the functionality of a button or UI action. When a widget is equipped with tooltip, if user long presses the widget or some appropriate action on the widget, tooltip appears as a floating label.",
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
                  Text("Long press on Image to see ToolTip"),
                  Tooltip(
                    message: "Flutter Logo",
                    child: Image.asset(
                      "images/flutter.jpeg",
                      height: 300,
                      width: 300,
                    ),
                  ),
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
