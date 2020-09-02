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
class widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: ListView(
        children: [
          raisedButton(
              "For more information on Alert Dialog CLICK HERE", Alertdialog()),
          raisedButton(
              "For more information on RichText CLICK HERE", Richtext()),
          raisedButton("For more information on SelectableText CLICK HERE",
              Selectabletext()),
          raisedButton(
              "For more information on Flexible CLICK HERE", flexible()),
          raisedButton("For more information on Spacer CLICK HERE", spacer()),
          raisedButton("For more information on Divider CLICK HERE", divider()),
          raisedButton("For more information on IgnorePointer CLICK HERE",
              ignorePointer()),
          raisedButton(
              "For more information on ColorFilter CLICK HERE", colorFilter()),
          raisedButton("For more information on ToolTip CLICK HERE", tooltip()),

          raisedButton(
              "For more information on AspectRatio CLICK HERE", Aspectratio()),
          raisedButton(
              "For more information on SizedBox CLICK HERE", Sizedbox()),
        ],
      ),
    );
  }

  Widget raisedButton(String text, Widget next) {
    return Container(
      margin: EdgeInsets.all(5),
    child:ClipRRect(
      borderRadius: BorderRadius.circular(15),
    child:SizedBox(
      height:50,
      width: double.maxFinite,
      child: RaisedButton(
        color: Colors.red[100],
        elevation:20,
        hoverElevation: 20.0,
        onPressed: () {
          // ignore: unnecessary_statements
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => next));
        },
        child: Text(
          text,
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 14,
          ),
        ),
      ),),
    ),);
  }
}
