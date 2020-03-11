import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
        body: Container(
          margin: EdgeInsets.only(top:90.0),
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Color.fromRGBO(121, 80, 124, 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  TextFormField(

                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'username or email',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(121, 80, 124, 1),
                        fontSize: 18.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white70,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white12,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                  ),
                    validator: (val){
                      if(val.isEmpty){
                        return 'please enter your name';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(121, 80, 124, 1),
                        fontSize: 18.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                    ),
                    obscureText: true,
                    validator: (val){
                      if(val.isEmpty){
                        return 'please enter your password';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),),
                      focusElevation: 8.0,
                      padding: EdgeInsets.symmetric(horizontal: 50.0 ,vertical: 15.0),
                    color: Color.fromRGBO(189, 89, 215, 1),
                    elevation: 4.0,
                    child: Text('SIGN IN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: (){},
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:70.0),
                  ),
                  Text(
                    'Or login with',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: Image.asset('images/face.png' ,
                        ),
                        iconSize: 40.0,
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset('images/google.png'
                      ),
                      iconSize: 50.0,
                      padding: EdgeInsets.only(top: 20.0 , left: 10.0),
                    ),
                    ],
                  ),
                  FlatButton(
                    onPressed: (){},
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text('Sign Up',
                      style: TextStyle(
                        color: Color.fromRGBO(121, 80, 124, 1),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
