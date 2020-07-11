import 'package:flutter/material.dart';

// ignore: camel_case_types
class colorFilter extends StatefulWidget {
  @override
  _colorFilterState createState() => _colorFilterState();
}

// ignore: camel_case_types
class _colorFilterState extends State<colorFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColorFilter"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "ColorFilter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                " A color filter is a function that takes two colors, and outputs one color. When applied during compositing, it is independently applied to each pixel of the layer being drawn before the entire layer is merged with the destination.",
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
                  Text("Original"),
                  Image.asset(
                    "images/flutter.jpeg",
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 40),
                  Text("Color Filtered"),
                  Container(
                    child: ColorFiltered(
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.color),
                      child: Image.asset(
                        "images/flutter.jpeg",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
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
