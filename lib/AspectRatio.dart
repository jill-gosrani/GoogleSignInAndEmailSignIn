import 'package:flutter/material.dart';

class Aspectratio extends StatefulWidget {
  @override
  _AspectratioState createState() => _AspectratioState();
}

class _AspectratioState extends State<Aspectratio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
         'Aspect Ratio',
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
                "Aspect Ratio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "The widget first tries the largest width permitted by the layout constraints. The height of the widget is determined by applying the given aspect ratio to the width, expressed as a ratio of width to height. For example, a 16:9 width:height aspect ratio would have a value of 16.0/9.0. If the maximum width is infinite, the initial width is determined by applying the aspect ratio to the maximum height. Now consider a second example, this time with an aspect ratio of 2.0 and layout constraints that require the width to be between 0.0 and 100.0 and the height to be between 0.0 and 100.0. We'll select a width of 100.0 (the biggest allowed) and a height of 50.0 (to match the aspect ratio).",
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
              height: 20, 
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Text("Below Image is in ratio 3:2"),
                  AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Image.asset(
                      "images/flutter.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:10),
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
