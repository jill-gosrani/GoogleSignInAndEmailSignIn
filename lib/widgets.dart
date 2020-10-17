import 'package:flutter/material.dart';
import 'package:loginFirebase/AlertDialog.dart';
import 'package:loginFirebase/AppBarFile.dart';
import 'package:loginFirebase/AspectRatio.dart';
import 'package:loginFirebase/ColorFilter.dart';
import 'package:loginFirebase/columnFile.dart';
import 'package:loginFirebase/conFile.dart';
import 'package:loginFirebase/Divider.dart';
import 'package:loginFirebase/Flexible.dart';
import 'package:loginFirebase/IgnorePointer.dart';
import 'package:loginFirebase/Materialfile.dart';
import 'package:loginFirebase/RichText.dart';
import 'package:loginFirebase/Scaffoldfile.dart';
import 'package:loginFirebase/SelectableText.dart';
import 'package:loginFirebase/SizedBox.dart';
import 'package:loginFirebase/Spacer.dart';
import 'package:loginFirebase/ToolTip.dart';
import 'package:loginFirebase/snackBar.dart';

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
      appBar:AppBar(
      title: Center(
        child: Text(
           'Flutter Widgets',          
           style: TextStyle(
             color: Colors.black45,
             fontSize:25,
           ),
          ),
      ),
       backgroundColor: Color(0xFF64FFDA),
      ),
      body: ListView(
        children: [
          raisedButton("MATERIAL APP ", LMaterialWidget()),
          raisedButton("SCAFFOLD ", LScaffoldWidget()),
          raisedButton("APP BAR ", LAppBarWidget()),
          raisedButton("CONTAINER ", LCWidget()),
          raisedButton("SNACK BAR ", LSWidget()),
          raisedButton("COLUMN ", LColumn()),
          raisedButton("ALERT DIALOG ", LAlertWidget()),
          raisedButton("RICH TEXT ", Richtext()),
          raisedButton("SELECTABLE TEXT ",Selectabletext()),
          raisedButton("FLEXIBLE ", flexible()),
          raisedButton("SPACER ", spacer()),
          raisedButton("DIVIDER ", divider()),
          raisedButton("IGNORE POINTER ",ignorePointer()),
          raisedButton("COLOR FILTER ", colorFilter()),
          raisedButton("TOOL TIP ", tooltip()),
          raisedButton("ASPECT RATIO ", Aspectratio()),
          raisedButton("SIZED BOX ", Sizedbox()),
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
      height:65,
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
