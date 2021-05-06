import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:loginsample_app/pages/resetpassword.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/pages/createaccount.dart';
import 'package:flutter/services.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginsample_app/util/printscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class Signin extends StatefulWidget {
  SigninState createState() => SigninState();
}

enum LoginStatus { notSignIn, signIn }

class SigninState extends State {
  LoginStatus _loginStatus = LoginStatus.notSignIn;
  final _key = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String email, password;

  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      login();
    }
  }

  login() async {
    final response = await http.post(
        "https://83a7c0604c7f.ngrok.io/msbm_portal_new/api.user-management.php",
        body: {
          "student_username": email,
          "student_password": password,
          //  "fcm_token": "test_fcm_token"
        });

    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['response'];
    String emailAPI = data['student_username'];
//    String nameAPI = data['name'];
    String id = data['token'];

    if (value == 1) {
      setState(() {
        _loginStatus = LoginStatus.signIn;
        savePref(value, emailAPI, id);
      });
      print(message);
      loginToast(message);
    } else {
      print("fail");
      print(message);
      loginToast(message);
    }
  }

  loginToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  savePref(int value, String email, String id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);

      preferences.setString("student_username", email);
      preferences.setString("id", id);
      // ignore: deprecated_member_use
      preferences.commit();
    });
  }

  var value;

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");

      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
    });
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    ThemeData(fontFamily: 'Circular STD');
    // ignore: unused_element
    // ignore: unused_element
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 000000);
    }

    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    switch (_loginStatus) {
      case LoginStatus.notSignIn:
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Welcome to MSBM",
            home: new Material(
                child: new Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.black,
                    child: new Container(
                      child: new Center(
                          child: Form(
                              key: _key,
                              child: new Column(children: [
                                new Padding(
                                    padding: EdgeInsets.only(
                                        top: 50.0, left: 15.0, right: 15.0)),
                                Column(
                                  children: <Widget>[
                                    SizedBox(height: 15.h),
                                  ],
                                ),
                                Container(
                                  height: 250.h,
                                  width: 450.w,
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
                                new Text(
                                  'Welcome',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenUtil().setSp(35),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Circular STD',
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.only(top: 20.0)),
                                SizedBox(
                                  width: 700.w,
                                  child: Material(
                                    elevation: 00.0,
                                    child: TextFormField(
                                      // ignore: missing_return
                                      validator: (e) {
                                        if (e.isEmpty) {
                                          return "Please Insert Email";
                                        }
                                      },
                                      onSaved: (e) => email = e,
                                      cursorColor:
                                          Color.fromRGBO(252, 252, 252, 1),
                                      decoration: new InputDecoration(
                                        labelText: "Email",
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        fillColor:
                                            Color.fromRGBO(252, 252, 252, 1),
                                        filled: true,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.none,
                                              color: Color.fromRGBO(
                                                  252, 252, 252, 1)),
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(0.0),
                                          borderSide: new BorderSide(
                                              color: Color.fromRGBO(
                                                  252, 252, 252, 1)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.none,
                                              color: Color.fromRGBO(
                                                  252, 252, 252, 1)),
                                        ),

                                        //fillColor: Colors.green
                                      ),

                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Circular STD",
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                                SizedBox(
                                  width: 700.w,
                                  child: Material(
                                    elevation: 01.0,
                                    shadowColor: Colors.black,
                                    child: TextFormField(
                                      // ignore: missing_return
                                      validator: (e) {
                                        if (e.isEmpty) {
                                          return "Password Can't be Empty";
                                        }
                                      },
                                      obscureText: _secureText,
                                      onSaved: (e) => password = e,

                                      cursorColor:
                                          Color.fromRGBO(252, 252, 252, 1),
                                      decoration: new InputDecoration(
                                        labelText: "Password",
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        fillColor:
                                            Color.fromRGBO(252, 252, 252, 1),
                                        filled: true,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.none,
                                              color: Color.fromRGBO(
                                                  252, 252, 252, 1)),
                                        ),
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(0.0),
                                          borderSide: new BorderSide(
                                              color: Color.fromRGBO(
                                                  252, 252, 252, 1)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              style: BorderStyle.none,
                                              color: Color.fromRGBO(
                                                  252, 252, 252, 1)),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: showHide,
                                          icon: Icon(_secureText
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                        ),
                                        //fillColor: Colors.green
                                      ),

                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Circular STD",
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                FlatButton(
                                  padding: EdgeInsets.fromLTRB(270, 0, 0, 0),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResetPassword()),
                                    );
                                  },
                                  child: Text(
                                    'Forgotten Password?',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(18),
                                    ),
                                  ),
                                  textColor: Colors.white,
                                ),
                                Container(
                                    height: 90.h,
                                    width: 18700,
                                    padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                    child: RaisedButton(
                                      textColor: Colors.white,
                                      color: Color.fromRGBO(173, 0, 0, 1),
                                      onPressed: () {
                                        check();
                                      },
                                      child: Text(
                                        'LOG IN',
                                        style: TextStyle(
                                            fontFamily: 'Circular STD',
                                            fontSize: ScreenUtil().setSp(24),
                                            fontWeight: FontWeight.normal),
                                      ),
                                    )),
                                Container(
                                  width: 700.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      FlatButton(
                                        textColor: Colors.white,
                                        child: Text(
                                          'I do not have an account? Sign up',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(20),
                                              color: Colors.white,
                                              fontFamily: 'Circular STD'),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => CAP()),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ]))),
                    ))));
        break;

      case LoginStatus.signIn:
        return Home();
        break;
    }
  }
}
