import 'package:flutter/material.dart';

class Richtext extends StatefulWidget {
  @override
  _RichtextState createState() => _RichtextState();
}

class _RichtextState extends State<Richtext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Rich Text",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "The style property of text widget is used to apply various styles to a text, but a limitation of it is, the style gets applied to the entire text irrespective of whether the text is a single line or multiline. RichText uses TextSpan as a parent object that has its own style property along with a text parameter which we can input the actual text. The parent object then can have a number of TextSpan objects as children who have their own style property that can be applied to respective text.",
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
            RichText(
              text: TextSpan(
                text: "Hello,My name is",
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: " Jill Gosrani ",
                      style: TextStyle(
                        color: Colors.orange,
                      )),
                  TextSpan(
                      text: "Nice to meet you",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
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
