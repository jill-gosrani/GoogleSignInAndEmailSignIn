import 'package:flutter/material.dart';
import 'package:loginFirebase/widgets.dart';

class LSWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LSnackBar(),
    );
  }
}

class LSnackBar extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'SnackBars',
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
          backgroundColor: Color(0xFF64FFDA),
        ),
        key: _scaffoldKey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 200, 16, 16),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  color: Colors.red[100],
                  child: Text("Simple Snackbar"),
                  onPressed: () {
                    var snackBar = SnackBar(content: Text("Simple Snackbar"));
                    _scaffoldKey.currentState.showSnackBar(snackBar);
                  },
                ),
                RaisedButton(
                  color: Colors.red[100],
                  child: Text("Colored Snackbar - 0.5 Seconds"),
                  onPressed: () {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text(
                        "SnackBar for 0.5 seconds",
                        style: TextStyle(color: Colors.red),
                      ),
                      duration: Duration(milliseconds: 500),
                      backgroundColor: Colors.lightGreenAccent,
                    ));
                  },
                ),
                RaisedButton(
                  color: Colors.red[100],
                  child: Text("Snackbar with image"),
                  onPressed: () {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Row(
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            " Hi",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.limeAccent,
                    ));
                  },
                ),
                SizedBox(height: 30),
                RaisedButton(
                  color: Colors.red[100],
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => widgets()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
