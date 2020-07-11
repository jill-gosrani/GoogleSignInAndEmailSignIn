import 'package:flutter/material.dart';

class Selectabletext extends StatefulWidget {
  @override
  _SelectabletextState createState() => _SelectabletextState();
}

class _SelectabletextState extends State<Selectabletext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selectable Text"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Selectable Text",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.  The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style's TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size.",
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
              padding: EdgeInsets.all(20),
              child: SelectableText(
                'This is Selectable text',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Text(
                "This is can't be Selected",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
