import 'package:flutter/material.dart';

// ignore: camel_case_types
class ignorePointer extends StatefulWidget {
  @override
  _ignorePointerState createState() => _ignorePointerState();
}

// ignore: camel_case_types
class _ignorePointerState extends State<ignorePointer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("IgnorePointer"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "IgnorePointer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "When ignoring is true, this widget (and its subtree) is invisible to hit testing. It still consumes space during layout and paints its child as usual. It just cannot be the target of located events, because it returns false from RenderBox.hitTest. When ignoringSemantics is true, the subtree will be invisible to the semantics layer (and thus e.g. accessibility tools). If ignoringSemantics is null, it uses the value of ignoring.",
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
                  Text("This is ignored"),
                  IgnorePointer(
                    ignoring: true,
                    child: RaisedButton(
                      color: Colors.red[100],
                      onPressed: () {
                        _scaffoldKey.currentState.showSnackBar(
                            SnackBar(content: Text('This Button is pressed')));
                      },
                      child: Text("Show Snackbar"),
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    color: Colors.red[100],
                    onPressed: () {
                      _scaffoldKey.currentState.showSnackBar(
                          SnackBar(content: Text('This Button is pressed')));
                    },
                    child: Text("Show Snackbar"),
                  )
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
