import 'package:flutter/material.dart';

class LColumn extends StatefulWidget {
  @override
  _LColumnState createState() => _LColumnState();
}

enum ALIGN { spaceEvenly, start, center }

class _LColumnState extends State<LColumn> {
  ALIGN _character = ALIGN.spaceEvenly;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Columns',
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
          backgroundColor: Color(0xFF64FFDA),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: _mainAxisAlignment,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height:60,
                        padding:EdgeInsets.all(15.0),
                        color:Colors.yellow[300],
                        child: Text(
                          "This is the Column Widget - Item1",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      Container(
                        height:60,
                        padding:EdgeInsets.all(15.0),
                        color:Colors.red[100],
                        child: Text(
                          "This is the Column Widget - Item2",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                     
                      Container(
                        height:60,
                        padding:EdgeInsets.all(15.0),
                        color:Colors.lightGreen[100],
                        child: Text(
                          "This is the Column Widget - Item4",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Radio(
                      value: ALIGN.spaceEvenly,
                      groupValue: _character,
                      onChanged: (ALIGN value) {
                        setState(() {
                          _character = value;
                          _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                        });
                      },
                    ),
                    Text("Evently"),
                    Radio(
                      value: ALIGN.start,
                      groupValue: _character,
                      onChanged: (ALIGN value) {
                        setState(() {
                          _character = value;
                          _mainAxisAlignment = MainAxisAlignment.start;
                        });
                      },
                    ),
                    Text("Start"),
                    Radio(
                      value: ALIGN.center,
                      groupValue: _character,
                      onChanged: (ALIGN value) {
                        setState(() {
                          _character = value;
                          _mainAxisAlignment = MainAxisAlignment.center;
                        });
                      },
                    ),
                    Text("Center"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
