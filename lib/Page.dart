import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loginFirebase/main.dart';

class Page2 extends StatefulWidget {
  GoogleSignIn _good;
  Page2(GoogleSignIn good){
    this._good = good;
  }
  @override
  _Page2State createState() => _Page2State(_good);
}

class _Page2State extends State<Page2> {

  GoogleSignIn googleSignIn;

  _Page2State(GoogleSignIn good){

    this.googleSignIn = good;
  }

  String emailSP = '';
  String userId = '';
  String name='';
  String email='';
  String age='';
  String gender='';


  
  @override
  void initState() {
    super.initState();
    fetchData();
  }



  fetchData() async {
    final prefs = await SharedPreferences.getInstance();
    userId = prefs.getString('userIDSPKey');

    FirebaseDatabase firebaseDatabase = FirebaseDatabase.instance;
    debugPrint("      UserId:  "+userId);
    DatabaseReference databaseReference =  firebaseDatabase.reference().child("userData").child(userId);
    databaseReference.once().then(
      (DataSnapshot dataSnapshot){
        // dataSnapshot.value['name'].toString();
        setState(() {
          name=dataSnapshot.value['name'].toString();
          gender=dataSnapshot.value['gender'].toString();
          age=dataSnapshot.value['age'].toString();
          email=dataSnapshot.value['email'].toString();
        });
      }
    );
  }





  _logout() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString('userIDSPKey','');
      prefs.setString('emailSPKey','');
      prefs.setString('loginSP',"nomail");
    });
    }
    
  //   debugPrint('OK');
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'Gender: $gender',
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'name: $name',
              ),
            ),

             Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'email: $email',
              ),
            ),

            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'age: $age',
              ),
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
              onPressed: (){
                googleSignIn.signOut().toString();
                //  debugPrint('OK');
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Head()));

                _logout();

              },
              child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.person,
                ),
                SizedBox(width: 4),
                Text(
                  "Logout",
                ),
              ],
            ),
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
              onPressed: (){
                //  debugPrint(googleSignIn.signOut().toString());
                //  debugPrint('OK');
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddData()));

                

              },
              child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.person,
                ),
                SizedBox(width: 4),
                Text(
                  "Add Data",
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


class AddData extends StatefulWidget {

  @override
  _AddDataState createState() => _AddDataState();
}


class _AddDataState extends State<AddData> {

  final _formKey = GlobalKey<FormState>();
  String id,name,gender,age,userId,email;
  TextEditingController controllerName= new TextEditingController();
  TextEditingController controllerMobile= new TextEditingController();
  TextEditingController controllerAge= new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  


  @override
  void initState() {
    super.initState();
    retriveData();
    
  }


  retriveData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      // emailSP = prefs.getString('emailSPKey');
      userId = prefs.getString('userIDSPKey');
      email= prefs.getString('emailSPKey');
    });
  }


  void addData()
  {
    if(_formKey.currentState.validate())
    {
      name=controllerName.text;
      gender=controllerMobile.text;
      age=controllerAge.text;
      FirebaseDatabase firebaseDatabase =FirebaseDatabase.instance;
      DatabaseReference databaseReference = firebaseDatabase.reference();
      databaseReference.child("userData").child(userId).set({
        "name":name,
        "gender":gender,
        "age":age,
        "email":email,
      });
  
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Adding Details...")));
   

    }
      
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,
      appBar: AppBar(
        // Here we take the value from the AddData object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Add data page"),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 10,
                  ),



                  TextFormField(
                    controller:controllerName,
                    decoration: InputDecoration(
                      hintText: "Enter name",
                      border: new OutlineInputBorder(),
                    ),
                    validator: (String input) {
                      if (input.isEmpty) {
                        return "name cannot be empty";
                      }
                      else return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),



                  TextFormField(
                    controller:controllerMobile ,
                    decoration: InputDecoration(
                      hintText: "Gender",
                      border: new OutlineInputBorder(),
                    ),
                    validator: (String input) {
                      if (input.isEmpty) {
                        return "contact cannot be empty";
                      }
                      else return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),



                  TextFormField(
                    controller: controllerAge,
                    decoration: InputDecoration(
                      hintText: "Enter age",
                      border: new OutlineInputBorder(),
                    ),
                    validator: (String input) {
                      if (input.isEmpty) {
                        return "age cannot be empty";
                      }
                      else return null;
                    },
                  ),

                  SizedBox(
                    height: 10,
                  ),


                  RaisedButton(
                    onPressed: () {
                      addData();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(googleSignIn)));
                     
                      },
                    padding: EdgeInsets.all(15),
                    child: Text("Add data"),
                  )
                ],
              ),
            )),
      ),
    );
  }
}



