import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';

import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/signin.dart';
import 'package:loginsample_app/pages/resetpassword.dart';

import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String name, email, mobile, password;
  final _key = new GlobalKey<FormState>();

  bool _secureText = true;
  bool visible = false;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      save();
    }
  }

  save() async {
    final response = await http
        .post("http://website/flutter_app/api_verification.php", body: {
      "name": name,
      "email": email,
      "password": password,
      "fcm_token": "test_fcm_token"
    });

    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['message'];
    if (value == 1) {
      setState(() {
        Navigator.pop(context);
      });
      print(message);
      registerToast(message);
    } else if (value == 2) {
      print(message);
      registerToast(message);
    } else {
      print(message);
      registerToast(message);
    }
  }

  registerToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

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
                  child: Form(
                      key: _key,
                      child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 30.0)),
                        new IconButton(
                          icon: Icon(
                            Icons.arrow_back,
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
                        new Text(
                          'Create Account',
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Email",
                            fillColor: Colors.white, filled: true,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: new BorderSide(color: Colors.white),
                            ),

                            //fillColor: Colors.green
                          ),
                          // ignore: missing_return
                          validator: (e) {
                            if (e.isEmpty) {
                              return "Please insert Email";
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
                            SizedBox(height: 5),
                          ],
                        ),
                        new TextFormField(
                          obscureText: _secureText,
                          onSaved: (e) => password = e,
                          decoration: new InputDecoration(
                            labelText: "Enter Password",
                            suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(_secureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            fillColor: Colors.white, filled: true,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: new BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Password cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          style: new TextStyle(
                            fontFamily: "Circular STD",
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 5),
                          ],
                        ),
                        new TextFormField(
                          obscureText: true,
                          decoration: new InputDecoration(
                            labelText: " Confirm Password",

                            fillColor: Colors.white, filled: true,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: new BorderSide(),
                            ),

                            //fillColor: Colors.green
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Password must be the same";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          style: new TextStyle(
                            fontFamily: "Circular STD",
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 25),
                          ],
                        ),
                        Container(
                            height: 50,
                            width: 18700,
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: RaisedButton(
                              textColor: Colors.white,
                              color: Color.fromRGBO(173, 0, 0, 1),
                              child: Text('SIGN UP'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SuccessfulRest()),
                                );
                              },
                            )),
                        Visibility(
                            visible: visible,
                            child: Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: Theme(
                                    data: Theme.of(context).copyWith(
                                        accentColor:
                                            Color.fromRGBO(173, 0, 0, 1)),
                                    child: CircularProgressIndicator()))),
                      ])),
                )))));
  }
}

class CAP extends StatefulWidget {
  @override
  _CAPState createState() => _CAPState();
}

class _CAPState extends State<CAP> {
  String name, email, mobile, password;
  final _key = new GlobalKey<FormState>();

  bool _secureText = true;
  bool visible = false;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      save();
    }
  }

  save() async {
    final response = await http.post("", body: {
      "name": name,
      "mobile": mobile,
      "password": password,
      "fcm_token": "test_fcm_token"
    });

    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['message'];
    if (value == 1) {
      setState(() {
        Navigator.pop(context);
      });
      print(message);
      registerToast(message);
    } else if (value == 2) {
      print(message);
      registerToast(message);
    } else {
      print(message);
      registerToast(message);
    }
  }

  registerToast(String toast) {
    return Fluttertoast.showToast(
        msg: toast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }

  List<ListItem> _dropdownItems = [
    ListItem(1, "Country"),
    ListItem(2, "Nigeria"),
    ListItem(3, "USA"),
    ListItem(4, "UAE")
  ];

  List<ListItem> _dropdownItems2 = [
    ListItem(1, "Position"),
    ListItem(2, "HR Officer"),
    ListItem(3, "Manager"),
    ListItem(4, "Other")
  ];

  List<ListItem> _dropdownItems3 = [
    ListItem(1, "Gender"),
    ListItem(2, "Male"),
    ListItem(3, "Female"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems2;
  ListItem _selectedItem2;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems3;
  ListItem _selectedItem3;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _dropdownMenuItems2 = buildDropDownMenuItems(_dropdownItems2);
    _dropdownMenuItems3 = buildDropDownMenuItems(_dropdownItems3);
    _selectedItem = _dropdownMenuItems[0].value;
    _selectedItem2 = _dropdownMenuItems2[0].value;
    _selectedItem3 = _dropdownMenuItems3[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 120.h),
                  ],
                ),
                new Text(
                  'Create Account',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(50),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10.h),
                  ],
                ),
                new Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 15,
                    right: 15,
                  ),
                ),
                SizedBox(
                  width: 700.w,
                  child: Material(
                    elevation: 00.0,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "First Name",
                        labelStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(252, 252, 252, 1),
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),

                        //fillColor: Colors.green
                      ),
                      // ignore: missing_return
                      validator: (e) {
                        if (e.isEmpty) {
                          return "Please insert Full Name";
                        }
                      },
                      onSaved: (e) => name = e,
                      keyboardType: TextInputType.text,
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
                    elevation: 00.0,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Last Name",
                        labelStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(252, 252, 252, 1),
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),

                        //fillColor: Colors.green
                      ),
                      // ignore: missing_return
                      validator: (e) {
                        if (e.isEmpty) {
                          return "Please insert Full Name";
                        }
                      },
                      onSaved: (e) => name = e,
                      keyboardType: TextInputType.text,
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
                    elevation: 00.0,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(252, 252, 252, 1),
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),

                        //fillColor: Colors.green
                      ),
                      // ignore: missing_return
                      validator: (e) {
                        if (e.isEmpty) {
                          return "Please insert Mobile Number";
                        }
                      },
                      keyboardType: TextInputType.number,
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
                Container(
                  height: 90.h,
                  width: 700.w,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: Colors.white,
                      border: Border.all()),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        style: new TextStyle(
                          color: Colors.grey,
                          fontFamily: "Circular STD",
                          fontStyle: FontStyle.normal,
                        ),
                        value: _selectedItem,
                        items: _dropdownMenuItems,
                        onChanged: (value) {
                          setState(() {
                            _selectedItem = value;
                          });
                        }),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 10.h),
                  ],
                ),
                Container(
                  height: 90.h,
                  width: 700.w,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: Colors.white,
                      border: Border.all()),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        style: new TextStyle(
                          color: Colors.grey,
                          fontFamily: "Circular STD",
                          fontStyle: FontStyle.normal,
                        ),
                        value: _selectedItem3,
                        items: _dropdownMenuItems3,
                        onChanged: (value) {
                          setState(() {
                            _selectedItem3 = value;
                          });
                        }),
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
                    elevation: 00.0,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Company/Employer",
                        labelStyle: TextStyle(color: Colors.grey),
                        fillColor: Color.fromRGBO(252, 252, 252, 1),
                        filled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(0.0),
                          borderSide: new BorderSide(
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.none,
                              color: Color.fromRGBO(252, 252, 252, 1)),
                        ),

                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Company/Employer cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
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
                Container(
                  height: 90.h,
                  width: 700.w,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: Colors.white,
                      border: Border.all()),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        style: new TextStyle(
                          color: Colors.grey,
                          fontFamily: "Circular STD",
                          fontStyle: FontStyle.normal,
                        ),
                        value: _selectedItem2,
                        items: _dropdownMenuItems2,
                        onChanged: (value) {
                          setState(() {
                            _selectedItem2 = value;
                          });
                        }),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                Container(
                    height: 90.h,
                    width: 700.w,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color.fromRGBO(173, 0, 0, 1),
                      onPressed: () {
                        check();
                      },
                      child: Text(
                        'PROCEED',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(24),
                        ),
                      ),
                    )),
                Container(
                  width: 700.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.white,
                        child: Text(
                          'I already have an account? Login',
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.white,
                              fontFamily: 'Circular STD'),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signin()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void printScreenInformation() {
    print('Device width dp:${ScreenUtil().screenWidth}');
    print('Device height dp:${ScreenUtil().screenHeight}');
    print('Device pixel density:${ScreenUtil().pixelRatio}');
    print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}');
    print('Status bar height px:${ScreenUtil().statusBarHeight}dp');
    print(
        'Ratio of actual width dp to design draft px:${ScreenUtil().scaleWidth}');
    print(
        'Ratio of actual height dp to design draft px:${ScreenUtil().scaleHeight}');
    print(
        'The ratio of font and width to the size of the design:${ScreenUtil().scaleWidth * ScreenUtil().pixelRatio}');
    print(
        'The ratio of  height width to the size of the design:${ScreenUtil().scaleHeight * ScreenUtil().pixelRatio}');
    print('System font scaling:${ScreenUtil().textScaleFactor}');
    print('0.5 times the screen width:${0.5.sw}');
    print('0.5 times the screen height:${0.5.sh}');
  }
}
