import "package:flutter/material.dart";
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loginFirebase/Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginFirebase/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Head());
}

// hs
class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void initState() {
    super.initState();
    alreadyLoggedIn();
  }

  alreadyLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    lgin = prefs.getString('loginSP') ?? "nomail";
    // ddd
    if (lgin != "nomail") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Page2(googleSignIn)));
    } else {
      lgin = "nomail";
    }
  }

  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth fire = FirebaseAuth.instance;
  String lgin = '';

  Future<FirebaseUser> _signIn(BuildContext context) async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
    FirebaseUser userDetails =
        (await fire.signInWithCredential(credential)).user;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Page2(googleSignIn)));

    // debugPrint(userDetails.uid);
    // debugPrint(userDetails.email);

    final prefs = await SharedPreferences.getInstance();
    prefs.setString('userIDSPKey', userDetails.uid);
    debugPrint("      Normal  " + userDetails.uid);
    debugPrint("       SharedPrefs vala:  " + prefs.getString('userIDSPKey'));
    prefs.setString('emailSPKey', userDetails.email);
    prefs.setString('loginSP', userDetails.email);
    return userDetails;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text(
          'Flutter Tutorials',
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
        backgroundColor: Color(0xFF64FFDA),
      ),
      body:Column(
        children: [
          Container(
        height: MediaQuery.of(context).size.height - 150,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/why.png"),
            fit: BoxFit.fill,
          ),
        ),
        ),
        Container(
          color: Color.fromRGBO(249,213,186,0.65),
          child: Row(
            children: [
              RaisedButton(
                color: Colors.red[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.alternate_email,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "SignIn Using Email",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                color: Colors.yellowAccent[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  _signIn(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.group,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "SignIn Using Google",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
 
        ],
      ),
       
    );
  }
}
