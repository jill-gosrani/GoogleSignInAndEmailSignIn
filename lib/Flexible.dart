import 'package:flutter/material.dart';

// ignore: camel_case_types
class flexible extends StatefulWidget {
  @override
  _flexibleState createState() => _flexibleState();
}

// ignore: camel_case_types
class _flexibleState extends State<flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Flexible",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Using a Flexible widget gives a child of a Row, Column, or Flex the flexibility to expand to fill the available space in the main axis (e.g., horizontally for a Row or vertically for a Column), but, unlike Expanded, Flexible does not require the child to fill the available space.A Flexible widget must be a descendant of a Row, Column, or Flex, and the path from the Flexible widget to its enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets (not other kinds of widgets, like RenderObjectWidgets).",
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
            Container(
              height: 400,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: 80,
                          color: Colors.blue,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child:Container(
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child:Container(
                          height: 120,
                          color: Colors.green,

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:30),
                  RaisedButton(
                    child:Text("Back"),
                    onPressed: (){
                      Navigator.pop(context);
                    },
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
