import 'package:flutter/material.dart';
import 'package:loginFirebase/AlertDialog.dart';
import 'package:loginFirebase/AspectRatio.dart';
import 'package:loginFirebase/ColorFilter.dart';
import 'package:loginFirebase/Divider.dart';
import 'package:loginFirebase/Flexible.dart';
import 'package:loginFirebase/IgnorePointer.dart';
import 'package:loginFirebase/RichText.dart';
import 'package:loginFirebase/SelectableText.dart';
import 'package:loginFirebase/SizedBox.dart';
import 'package:loginFirebase/Spacer.dart';
import 'package:loginFirebase/ToolTip.dart';

// ignore: camel_case_types
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: newState(),
      ),
    );
  }
}

// ignore: camel_case_types
class newState extends StatefulWidget {
  @override
  _newStateState createState() => _newStateState();
}

// ignore: camel_case_types
class _newStateState extends State<newState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(12),
              height: 30,
              color: Colors.pink[800],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LAlertWidget()));
                    },
                    child: Text(
                      "For more information on Alert Dialog CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 30,
              color: Colors.indigo,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Richtext()));
                    },
                    child: Text(
                      "For more information on RichText CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              color: Colors.blue,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Selectabletext()));
                    },
                    child: Text(
                      "For more information on SelectableText CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 30,
              color: Colors.green,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => flexible()));
                    },
                    child: Text(
                      "For more information on Flexible CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              color: Colors.yellowAccent,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => spacer()));
                    },
                    child: Text(
                      "For more information on Spacer CLICK HERE",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 30,
              color: Colors.orange,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => divider()));
                    },
                    child: Text(
                      "For more information on Divider CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              color: Colors.red,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ignorePointer()));
                    },
                    child: Text(
                      "For more information on IgnorePointer CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 30,
              color: Colors.pink[800],
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => colorFilter()));
                    },
                    child: Text(
                      "For more information on ColorFilter CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              color: Colors.indigo,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => tooltip()));
                    },
                    child: Text(
                      "For more information on ToolTip CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 30,
              color: Colors.blue,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Aspectratio()));
                    },
                    child: Text(
                      "For more information on AspectRatio CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30,
              color: Colors.green,
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sizedbox()));
                    },
                    child: Text(
                      "For more information on SizedBox CLICK HERE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          raisedButton(
            "For more information on SizedBox CLICK HERE",
           Sizedbox(),
          ),
        ],
      ),
    );
  }

  RaisedButton raisedButton(String text, Widget next) {
    return RaisedButton(
      onPressed: () {
        // ignore: unnecessary_statements
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => next,)
            );
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
