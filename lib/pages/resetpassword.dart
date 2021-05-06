import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:loginsample_app/pages/signin.dart';
import 'package:loginsample_app/pages/landingpage.dart';
import 'package:loginsample_app/util/bottomnavigation.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 000000);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Create Account",
        home: new Material(
            child: new Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.black,
                child: new Container(
                  child: new Center(
                      child: new Column(children: [
                    new Padding(padding: EdgeInsets.only(top: 30.0)),
                    new IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(0, 0, 400, 0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 0),
                      ],
                    ),
                    Container(
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/Logo2.png'),
                          fit: BoxFit.contain,
                        ),
                        border: Border.all(
                          color: Colors.black,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                      ],
                    ),
                    new Text('Reset Password',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: 'Circular STD',
                          fontWeight: FontWeight.bold,
                        )),
                    new Padding(padding: EdgeInsets.only(top: 30.0)),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Enter Email",
                        fillColor: Colors.white, filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(color: Colors.white),
                        ),

                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        color: Colors.white,
                        fontFamily: "Circular STD",
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 18700,
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Color.fromRGBO(173, 0, 0, 1),
                          child: Text('RESET PASSWORD',
                              style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingPage()),
                            );
                          },
                        )),
                    SizedBox(height: 30.h),
                    Container(
                      //  padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
                      width: 500.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            textColor: Colors.white,
                            child: Text(
                              'I already have an account? Login',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontFamily: 'Circular STD',
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ])),
                ))));
  }
}

class SuccessfulRest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 000000);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Create Account",
        home: new Material(
            child: new Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.black,
                child: new Container(
                  child: new Center(
                      child: new Column(children: [
                    new Padding(padding: EdgeInsets.only(top: 50.0)),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 45),
                      ],
                    ),
                    new Text('Successful',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: 'Circular STD',
                          fontWeight: FontWeight.w700,
                        )),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                      ],
                    ),
                    Container(
                      height: 93,
                      width: 250,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/check.png'),
                          fit: BoxFit.contain,
                        ),
                        border: Border.all(
                          color: Colors.black,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                      ],
                    ),
                    new Padding(padding: EdgeInsets.only(top: 30.0)),
                    new Text(
                      'Your account was successfully created. You can click the continue button to get started.',
                      style: TextStyle(
                        fontFamily: 'Circular STD',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.clip,
                      maxLines: 6,
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 30),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 18700,
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Color.fromRGBO(173, 0, 0, 1),
                          child: Text('CONTINUE',
                              style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TabsPage()),
                            );
                          },
                        )),
                  ])),
                ))));
  }
}
