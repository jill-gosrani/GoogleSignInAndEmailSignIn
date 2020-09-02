import 'package:flutter/material.dart';

class Alertdialog extends StatefulWidget {
  @override
  _AlertdialogState createState() => _AlertdialogState();
}

class _AlertdialogState extends State<Alertdialog> {
  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Something went Wrong "),
          content: new Text("go Back"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              color: Colors.red[100],
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
         'Alertdialog',
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
                "Alert Dialog",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "An alert dialog is a useful tool that alerts the app’s user. It is a pop up in the middle of the screen which places an overlay over the background. Most commonly, it is used to confirm one of the user’s potentially unrevertable actions.There are limitless possibilities for an AlertDialog,Actions are where you put the buttons, usually at the bottom of the dialog. The actions field takes in a list of widgets therefore allowing you to put as many action widgets as you like.",
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 50),
            RaisedButton(
              color: Colors.red[100],
              onPressed: () {
                _showDialog(context);
              },
              child: Text('click me'),
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
