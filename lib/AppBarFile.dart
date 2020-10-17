import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Notification Clicked'));

class LAppBarWidget extends StatelessWidget {
  LAppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,200,16,16),
      child: SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: const Text('AppBar Demo'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  scaffoldKey.currentState.showSnackBar(snackBar);
                },
              ),
              IconButton(
                icon: const Icon(Icons.close),
                tooltip: 'close',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          body: const Center(
            child: Text(
              'This is the home page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}