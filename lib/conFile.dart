import 'package:flutter/material.dart';
import 'package:loginFirebase/widgets.dart';

class LCWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LContainerWidget(),
    );
  }
}

class LContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(5.0),
                  color: Theme.of(context).primaryColor,
                  child: Center(
                      child: Text(
                    'I am also Slanting,but see my edges',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
                  width: MediaQuery.of(context).size.width,
                  height: 96.0,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Theme.of(context).primaryColor,
                  alignment: Alignment.center,
                  child: Text('Hai, I am  Slanting',
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(color: Colors.white)),
                  transform: Matrix4.skewY(0.2),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                  constraints: BoxConstraints.expand(
                    height:
                        Theme.of(context).textTheme.display1.fontSize * 1.0 +
                            50.0,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  color: Theme.of(context).primaryColor,
                  alignment: Alignment.center,
                  child: Text(
                    'I am also Slanting,but see my edges',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  transform: Matrix4.rotationZ(0.2),
                ),
                SizedBox(
                  height: 64,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.green,
                          child: Center(
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.red,
                              child: Center(
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                RaisedButton(
                  color: Colors.red[100],
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>widgets()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
