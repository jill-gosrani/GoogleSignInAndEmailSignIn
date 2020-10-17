import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LAWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LAlertWidget();   
  }
}

class LAlertWidget extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //Function to Show SnackBar on dialog dismiss

    void _showSnackBar(String text, String ans) {
      final snackBar = SnackBar(
          duration: Duration(milliseconds: 500),
          backgroundColor:
              ans.compareTo("Yes") == 0 ? Colors.green : Colors.red,
          content: Row(
            children: <Widget>[
              Icon(
                ans.compareTo("Yes") == 0 ? Icons.favorite : Icons.watch_later,
                color: ans.compareTo("Yes") == 0 ? Colors.pink : Colors.yellow,
                size: 24.0,
                semanticLabel: text,
              ),
              Text(text)
            ],
          ));
      _scaffoldKey.currentState.showSnackBar(snackBar);
    }

    // Simple Dialog

    Future<void> _simpleDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('Simple Dialog, Is it nice?'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    Future<void> _alertDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text('Is it nice?'),
              title: Text('Alert Dialog'),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    void _timerDialog() {
      DateTime now = DateTime.now();
      showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: now.hour, minute: now.minute))
          .then((onValue) {
        _showSnackBar(onValue.format(context), "ok");
      });
    }

    void _datePickerDialog() {
      DateTime now = DateTime.now();
      showDatePicker(
          context: context,
          initialDate: now,
          firstDate: DateTime(2000),
          lastDate: DateTime(2050))
          .then((onValue) {
        _showSnackBar('$onValue', "ok");
      });
    }

    // ignore: non_constant_identifier_names
    Future<void> _CupertinoDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: const Text('Welcome'),
              content: Text("Cupertino Dialog, Is it nice?"),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text('Yes'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case "Yes":
          _showSnackBar("Thanks!", "Yes");
          break;
        case "No":
          _showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    return SafeArea(
      child:  Scaffold(
          key:_scaffoldKey,
          appBar:AppBar(
          title:Text(
           'Alert Dialog',          
           style: TextStyle(
             color: Colors.black45,
           ),
          ),
          backgroundColor: Color(0xFF64FFDA),
      ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text('Simple Dialog'),
                  onPressed: _simpleDialog,
                ),
                RaisedButton(
                  child: Text('Alert Dialog'),
                  onPressed: _alertDialog,
                ),
                RaisedButton(
                  child: Text('Date Picker Dialog'),
                  onPressed: _datePickerDialog,
                ),
                RaisedButton(
                  child: Text('Timer Picker Dialog'),
                  onPressed: _timerDialog,
                ),
                RaisedButton(
                  child: Text('Cupertino Dialog'),
                  onPressed: _CupertinoDialog,
                )
              ],
            ),
          ),
        ),
    );
  }
}