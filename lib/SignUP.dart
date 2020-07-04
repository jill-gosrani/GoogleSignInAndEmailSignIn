import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUPPage extends StatefulWidget {
  @override
  _SignUPPageState createState() => _SignUPPageState();
}

class _SignUPPageState extends State<SignUPPage> {
  
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  _signUpUsingEmail(String email, String pass) {
    FirebaseAuth fire = FirebaseAuth.instance;
    fire
        .createUserWithEmailAndPassword(email: email, password: pass)
        .then((AuthResult authResult) {
      Navigator.pop(context);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUP'),
      ),
      key:_scaffoldKey,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(32),
          children: <Widget>[
            Center(
              child: Icon(
                Icons.account_circle,
                size: 128,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              validator: (String content) {
                if (content.length == 0) {
                  return "Please enter valid email";
                } else {
                  return null;
                }
              },
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter Your Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              obscureText: true,
              validator: (String content) {
                if (content.length < 8) {
                  return "Minimum 8 digit password";
                } else {
                  return null;
                }
              },
              controller: passController,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Your Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
            height: 16,
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.only(
              left: 48,
              right: 48,
              top: 8,
              bottom: 8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            onPressed: () {
              // If statement is validating the input fields.
              if (_formKey.currentState.validate()) {
                final snackBar = SnackBar(content: Text("Creating Account"));
                _scaffoldKey.currentState.showSnackBar(snackBar);
              }

              _signUpUsingEmail(emailController.text, passController.text);


            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.person_add,
                ),
                SizedBox(width: 4),
                Text(
                  "SignUP",
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
