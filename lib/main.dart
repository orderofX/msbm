import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:loginsample_app/pages/checkout.dart';
import 'package:loginsample_app/pages/explorepage.dart';
import 'package:loginsample_app/pages/notifications.dart';
import 'package:loginsample_app/pages/viewcourse.dart';
import 'package:loginsample_app/util/bottomnavigation.dart';
import 'dart:async';
import 'pages/home.dart';
import 'popup.dart';
import 'popup_content.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_session/flutter_session.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:file_picker/file_picker.dart';
import 'package:loginsample_app/pages/signin.dart';
import 'package:loginsample_app/pages/createaccount.dart';

void main() => runApp(new MaterialApp(
      home: Signin(),
      theme: ThemeData(accentColor: Color.fromRGBO(173, 0, 0, 1)),
      debugShowCheckedModeBanner: false,
    ));
//Future main() async {
//  WidgetsFlutterBinding.ensureInitialized();
// runApp(new PaymentSummary());
//}

class Data {
  final int id;
  final String data;

  Data({this.data, this.id});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["data"] = this.data;
    return data;
  }
}

class WorkExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 000000);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to MSBM",
        home: new Material(
            child: new Container(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 20,
                ),
                color: Colors.white,
                child: new Container(
                  child: SingleChildScrollView(
                      child: new Column(children: [
                    Container(
                      height: 65,
                      color: Colors.black,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          new IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            iconSize: 23.0,
                            padding: EdgeInsets.fromLTRB(0, 2, 30, 0),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          new FlatButton(
                            padding: EdgeInsets.fromLTRB(284, 0, 0, 0),
                            textColor: Colors.black,
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black),
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(height: 0),
                        ],
                      ),
                    ),
                    new Padding(
                        padding: const EdgeInsets.only(
                      top: 0.0,
                      left: 180,
                      right: 180,
                      bottom: 0.0,
                    )),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                      ],
                    ),
                    Row(children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                      new Text(
                        'Work Experience',
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontFamily: 'Circular STD',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 25),
                      ],
                    ),
                    SizedBox(
                      width: 390,
                      child: Material(
                        elevation: 01.0,
                        shadowColor: Colors.black,
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(252, 252, 252, 1),
                          decoration: new InputDecoration(
                            labelText: "Company",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Circular STD',
                            ),
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
                              return "Company cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontFamily: "Circular STD",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                      ],
                    ),
                    SizedBox(
                      width: 390,
                      child: Material(
                        elevation: 01.0,
                        shadowColor: Colors.black,
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(252, 252, 252, 1),
                          decoration: new InputDecoration(
                            labelText: "Address",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Circular STD',
                            ),
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
                              return "Address cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.streetAddress,
                          style: new TextStyle(
                            color: Colors.black,
                            fontFamily: "Circular STD",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                      ],
                    ),
                    SizedBox(
                      width: 390,
                      child: Material(
                        elevation: 01.0,
                        shadowColor: Colors.black,
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(252, 252, 252, 1),
                          decoration: new InputDecoration(
                            labelText: "Job Title/Position",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Circular STD',
                            ),
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
                              return "Job Title/Position cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          style: new TextStyle(
                            color: Colors.black,
                            fontFamily: "Circular STD",
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                      width: 390,
                      child: Material(
                        elevation: 01.0,
                        shadowColor: Colors.black,
                        child: new DropdownButtonFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                            items: [
                              '10 years',
                              '20 years',
                            ]
                                .map((label) => DropdownMenuItem(
                                      child: Text(label.toString()),
                                      value: label,
                                    ))
                                .toList(),
                            hint: Text(
                              'Duration with company',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            dropdownColor: Colors.white,
                            onChanged: null),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                      ],
                    ),
                    SizedBox(
                      height: 160,
                      width: 390,
                      child: Material(
                        elevation: 01.0,
                        shadowColor: Colors.black,
                        child: TextField(
                          cursorColor: Color.fromRGBO(252, 252, 252, 1),
                          decoration: new InputDecoration(
                            labelText: "Job Description",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Circular STD',
                                fontSize: 11),
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
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                      child: FloatingActionButton(
                          child: new Icon(Icons.add),
                          backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                          onPressed: () {}),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 18700,
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Color.fromRGBO(173, 0, 0, 1),
                          onPressed: () {
                            print("Clicked");
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new PaymentSummary()),
                            );
                          },
                          child: Text('SAVE CHANGES',
                              style: TextStyle(
                                  fontFamily: 'Circular STD', fontSize: 16)),
                        )),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 45),
                      ],
                    ),
                  ])),
                ))));
  }
}

//Certificate

class Certificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 000000);
    }

    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to MSBM",
        home: new Material(
            child: new Container(
                padding: const EdgeInsets.only(
                  top: 24,
                  bottom: 20,
                ),
                color: Colors.white,
                child: new Container(
                  child: SingleChildScrollView(
                      child: new Column(children: [
                    Container(
                      child: Stack(children: <Widget>[
                        Container(
                          height: 105.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios,
                                    color: Colors.black, size: 20),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    new Padding(
                        padding: const EdgeInsets.only(
                      top: 0.0,
                      left: 180,
                      right: 180,
                      bottom: 0.0,
                    )),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 55.h),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(600000, 0, 0, 0),
                      height: 537.h,
                      width: 500.w,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/rec250.png'),
                          fit: BoxFit.fitHeight,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 35),
                      ],
                    ),
                    Column(children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(60, 0, 60, 0)),
                      SizedBox(
                        width: 439.w,
                        child: new Text(
                          'Professional Certificate Courses in Business Management',
                          style: new TextStyle(
                            color: Color.fromRGBO(45, 45, 45, 1),
                            fontSize: 20.0,
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                        ),
                      ),
                    ]),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 35.h),
                      ],
                    ),
                    Container(
                        height: 90.h,
                        width: 500.w,
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Color.fromRGBO(173, 0, 0, 1),
                          onPressed: () {
                            print("Clicked");
                          },
                          child: Text('DOWNLOAD NOW',
                              style: TextStyle(
                                  fontFamily: 'Circular STD', fontSize: 16)),
                        )),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 65.h),
                      ],
                    ),
                  ])),
                ))));
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

//IDcard

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyIDPage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyIDPage extends StatefulWidget {
  MyIDPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyIDPageState createState() => _MyIDPageState();
}

class _MyIDPageState extends State<MyIDPage> {
  int _counter = 0;
  double progress = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Courses',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 25),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 125.h,
                    width: 125.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                      height: 100.h,
                      width: 503.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'MBA  Degree Pathway - Level 7 Diploma in Strategic Management & Leadership',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(24),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 2.h),
                            ],
                          ),
                          Text(
                            '0% Complete',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(18),
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 5.h),
                            ],
                          ),
                          Container(
                              child: progress < 1.0
                                  ? LinearProgressIndicator(value: progress)
                                  : Container()),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 35),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Student Number",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 470.w,
                    ),
                    Text(
                      "2001914",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Time Left",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 470.w,
                    ),
                    Text(
                      "Course Expired",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Programme Start Date",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 372.w,
                    ),
                    Text(
                      "May 01, 2020",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Programme End Date ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 375.w,
                    ),
                    Text(
                      "May 15, 2020",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Last Login Date ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 420.w,
                    ),
                    Text(
                      "Sept 28, 2020",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 29.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Course ID Card ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 310.w,
                    ),
                    FlatButton(
                      onPressed: () {
                        showPopup(context, _popupBody(), 'Student ID');
                      },
                      child: Text('View ID Card'),
                      shape: Border.all(width: 2.0, color: Colors.black),
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 29.h),
                ],
              ),
              Divider(color: Colors.black),
              Column(
                children: <Widget>[
                  SizedBox(height: 29.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 125.h,
                    width: 125.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                      height: 100.h,
                      width: 503.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'MBA  Degree Pathway - Level 7 Diploma in Strategic Management & Leadership',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(24),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 2.h),
                            ],
                          ),
                          Text(
                            '0% Complete',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(18),
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 5.h),
                            ],
                          ),
                          Container(
                              child: progress < 1.0
                                  ? LinearProgressIndicator(value: progress)
                                  : Container()),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 35),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Student Number",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 470.w,
                    ),
                    Text(
                      "2001914",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Time Left",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 470.w,
                    ),
                    Text(
                      "Course Expired",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Programme Start Date",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 372.w,
                    ),
                    Text(
                      "May 01, 2020",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Programme End Date ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 375.w,
                    ),
                    Text(
                      "May 15, 2020",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Last Login Date ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 420.w,
                    ),
                    Text(
                      "Sept 28, 2020",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 29.h),
                ],
              ),
              Container(
                width: 700.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Course ID Card ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(20),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      width: 310.w,
                    ),
                    FlatButton(
                      onPressed: () {
                        showPopup(context, _popupBody(), 'Student ID');
                      },
                      child: Text('View ID Card'),
                      shape: Border.all(width: 2.0, color: Colors.black),
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showPopup(BuildContext context, Widget widget, String title,
      {BuildContext popupContext}) {
    Navigator.push(
      context,
      PopupLayout(
        top: 110,
        left: 50,
        right: 50,
        bottom: 110,
        child: PopupContent(
          content: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: new Container(
                padding: EdgeInsets.only(right: 0),
                width: 900,
                child: Text(
                  'Student ID: 3001914',
                  style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              actions: [
                new Builder(builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.cancel),
                    color: Colors.white,
                    onPressed: () {
                      try {
                        Navigator.pop(context); //close the popup
                      } catch (e) {}
                    },
                  );
                }),
              ],
              brightness: Brightness.light,
            ),
            resizeToAvoidBottomInset: false,
            body: widget,
          ),
        ),
      ),
    );
  }

  Widget _popupBody() {
    return Container(
      padding: EdgeInsets.only(top: 0),
      child: SizedBox(
        width: 390,
        child: Material(
          color: Color.fromRGBO(255, 255, 255, 1),
          elevation: 01.0,
          shadowColor: Colors.black,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(600000, 120, 0, 0),
                  height: 86,
                  width: 172,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/rec248.png'),
                      fit: BoxFit.contain,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(600000, 0, 0, 0),
                  height: 175,
                  width: 172,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/rec247.png'),
                      fit: BoxFit.contain,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                Container(
                    height: 80,
                    width: 405,
                    color: Colors.transparent,
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 0)),
                        Expanded(
                            child: Text(
                          ' Oluwadamilola Matthew Songs',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                        )),
                        SizedBox(height: 5),
                        Expanded(
                            child: Text(
                          'Mar 2, 2020 -  Mar 16, 2020',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: 16,
                            color: Color.fromRGBO(151, 151, 151, 1),
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                        )),
                        SizedBox(height: 5),
                        Expanded(
                            child: Text(
                          'Course Number',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: 16,
                            color: Color.fromRGBO(151, 151, 151, 1),
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                        )),
                      ],
                    )),
              ]),
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

//EditInformation
class EditInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //     FutureBuilder(
              //       future: FlutterSession().get('myData'),
              //    builder: (context, snapshot) {
              //   return Text(snapshot.hasData
              //         ? snapshot.data['id'].toString() +
              //        "|" +
              //      snapshot.data['data']
              //       : 'Loading...');
              //    }),
              Column(
                children: <Widget>[
                  SizedBox(height: 17.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Personal Information',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 420.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersonalInformation()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Education',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 540.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditEducation()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Work Experience',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 460.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Work()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
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

//Work Experince

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: <Widget>[
                    SizedBox(height: 30.h),
                  ],
                ),
                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  new Text(
                    'Work Experience',
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(35),
                      fontFamily: 'Circular STD',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25),
                  ],
                ),
                SizedBox(
                  width: 700.w,
                  child: Material(
                    elevation: 01.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Company",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Circular STD',
                        ),
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
                          return "Company cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                        color: Colors.black,
                        fontFamily: "Circular STD",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 15),
                  ],
                ),
                SizedBox(
                  width: 700.w,
                  child: Material(
                    elevation: 01.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Address",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Circular STD',
                        ),
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
                          return "Address cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.streetAddress,
                      style: new TextStyle(
                        color: Colors.black,
                        fontFamily: "Circular STD",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                SizedBox(
                  width: 700.w,
                  child: Material(
                    elevation: 01.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Job Title/Position",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Circular STD',
                        ),
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
                          return "Job Title/Position cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: new TextStyle(
                        color: Colors.black,
                        fontFamily: "Circular STD",
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                SizedBox(
                  height: 90.h,
                  width: 700.w,
                  child: Material(
                    elevation: 01.0,
                    shadowColor: Colors.black,
                    child: new DropdownButtonFormField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        items: [
                          '10 years',
                          '20 years',
                        ]
                            .map((label) => DropdownMenuItem(
                                  child: Text(label.toString()),
                                  value: label,
                                ))
                            .toList(),
                        hint: Text(
                          'Duration with company',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.normal,
                            fontSize: ScreenUtil().setSp(20),
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        dropdownColor: Colors.white,
                        onChanged: null),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                SizedBox(
                  height: 250.h,
                  width: 700.w,
                  child: Material(
                    elevation: 01.0,
                    shadowColor: Colors.black,
                    child: TextField(
                      cursorColor: Color.fromRGBO(252, 252, 252, 1),
                      decoration: new InputDecoration(
                        labelText: "Job Description",
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Circular STD',
                            fontSize: 11),
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
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                  child: FloatingActionButton(
                      child: new Icon(Icons.add),
                      backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                      onPressed: () {}),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                Container(
                    height: 90.h,
                    width: 18700,
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color.fromRGBO(173, 0, 0, 1),
                      onPressed: () {
                        print("Clicked");
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new PaymentSummary()),
                        );
                      },
                      child: Text('SAVE CHANGES',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(20),
                          )),
                    )),
                Column(
                  children: <Widget>[
                    SizedBox(height: 55.h),
                  ],
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

// Academic Issues Screen
class AcademicIssues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Academics Issues',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 503.h),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: FloatingActionButton(
                    elevation: 2.5,
                    child: new Icon(Icons.add),
                    backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ComposeMessage()),
                      );
                    }),
              ),
            ],
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

//Assignments issues

class AssignmentIssues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Assignments Issues',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 503.h),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: FloatingActionButton(
                    elevation: 2.5,
                    child: new Icon(Icons.add),
                    backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ComposeMessage()),
                      );
                    }),
              ),
            ],
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

//Technical issues
class TechnicalIssues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Technical Issues',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 503.h),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: FloatingActionButton(
                    elevation: 2.5,
                    child: new Icon(Icons.add),
                    backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ComposeMessage()),
                      );
                    }),
              ),
            ],
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

//Finance issues
class FinanceIssues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Finance Issues',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 503.h),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: FloatingActionButton(
                    elevation: 2.5,
                    child: new Icon(Icons.add),
                    backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ComposeMessage()),
                      );
                    }),
              ),
            ],
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

//student issues
class StudentIssues extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Student Issues',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 120.h,
                    width: 750.w,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Unable to Access Assignment',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(25),
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Jul 26, 2020 14:36:24',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(17),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 15.h),
                              Text(
                                'Solved',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(19),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(width: 315.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 3.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 503.h),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: FloatingActionButton(
                    elevation: 2.5,
                    child: new Icon(Icons.add),
                    backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ComposeMessage()),
                      );
                    }),
              ),
            ],
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

//MyAssignments

class MyAssignments extends StatelessWidget {
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 37.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 125.h,
                    width: 125.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                      height: 100.h,
                      width: 503.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'MBA  Degree Pathway - Level 7 Diploma in Strategic Management & Leadership',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(21),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 2.h),
                            ],
                          ),
                          Text(
                            '0% Complete',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(15),
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 5.h),
                            ],
                          ),
                          Container(
                              child: progress < 1.0
                                  ? LinearProgressIndicator(value: progress)
                                  : Container()),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Module',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Enterprise and Enterpreneuship',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(22),
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Title',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Power of Entrepreneuship',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(22),
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Deadline',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Sept 18, 2020',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(22),
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Status',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Pending',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(22),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(173, 0, 0, 1)),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15),
                ],
              ),
              Container(
                  height: 90.h,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Assignment()),
                      );
                    },
                    child: Text(
                      'VIEW/SUBMIT ASSIGNMENTS',
                      style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(22),
                      ),
                    ),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 45.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 45.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 125.h,
                    width: 125.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                      height: 100.h,
                      width: 503.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'MBA  Degree Pathway - Level 7 Diploma in Strategic Management & Leadership',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(24),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 2.h),
                            ],
                          ),
                          Text(
                            '0% Complete',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(18),
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 5.h),
                            ],
                          ),
                          Container(
                              child: progress < 1.0
                                  ? LinearProgressIndicator(value: progress)
                                  : Container()),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Module',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Accounting and Finance',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(22),
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Title',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Accounting Life',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(22),
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Deadline',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Aug 30, 2020',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(22),
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Text(
                  'Status',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[600],
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                  new Text(
                    'Completed',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(22),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: Colors.green),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                  height: 80.h,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Assignment()),
                      );
                    },
                    child: Text(
                      'VIEW/SUBMIT ASSIGNMENTS',
                      style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(22),
                      ),
                    ),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 80.h),
                ],
              ),
            ],
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

//AccountProceed

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

//DropDown Controller
class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  TextEditingController _controller = new TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _fileName;
  List<PlatformFile> _paths;
  String _directoryPath;
  String _extension;
  bool _loadingPath = false;
  bool _multiPick = true;
  FileType _pickingType = FileType.any;

  @override
  void initState() {
    super.initState();
  }

  void _openFileExplorer() async {
    setState(() => _loadingPath = true);
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: _multiPick,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '')?.split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      _fileName = _paths != null ? _paths.map((e) => e.name).toString() : '...';
    });
  }

  void _selectFolder() {
    FilePicker.platform.getDirectoryPath().then((value) {
      setState(() => _directoryPath = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 47.h),
                ],
              ),
              Container(
                  height: 180.h,
                  width: 700.w,
                  color: Color.fromRGBO(220, 53, 69, 0.21),
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(50, 10, 0, 5)),
                      Text(
                        ' Deadline Has Passed ',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(34),
                          color: Color.fromRGBO(173, 0, 0, 1),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                      SizedBox(height: 10.h),
                      Expanded(
                          child: Text(
                        'Please note that we review late submissions at our discretion. There’s no guarantee that your document(s) will be reviewed when submitted past the stipulated deadline.',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(24),
                          color: Color.fromRGBO(51, 51, 51, 1),
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      )),
                    ],
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 28),
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  Container(
                    height: 180.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.contain,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                      height: 120.h,
                      width: 450.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'MBA  Degree Pathway - Level 7 Diploma in Strategic Management & Leadership',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(24),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          SizedBox(
                            height: 12.h,
                          ),
                          Expanded(
                              child: Text(
                            'Strategic Entrepreneurship and Management',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(23),
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 55.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                new Text(
                  'Question',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(35),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Container(
                  height: 275.h,
                  width: 700.w,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 550, 0)),
                      Text(
                        'What is the Next Question?',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(26),
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      Expanded(
                          child: Text(
                        'Write a 500 word essay on a new disruptive idea to change the logisitcs industry . ',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(21),
                          color: Color.fromRGBO(51, 51, 51, 1),
                        ),
                        textAlign: TextAlign.left,
                      ))
                    ],
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                new Text(
                  'Upload',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(25),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              Container(
                  height: 400.h,
                  width: 700.w,
                  color: Color.fromRGBO(232, 232, 232, 0.8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          iconSize: ScreenUtil().setSp(50),
                          icon: Icon(
                            Icons.cloud_upload,
                            color: Colors.blue,
                          ),
                          onPressed: () => _openFileExplorer(),
                        ),
                        Builder(
                          builder: (BuildContext context) => _loadingPath
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: const CircularProgressIndicator(),
                                )
                              : _directoryPath != null
                                  ? ListTile(
                                      title: const Text('Directory path'),
                                      subtitle: Text(_directoryPath),
                                    )
                                  : _paths != null
                                      ? Container(
                                          padding: const EdgeInsets.only(
                                              bottom: 30.0),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.50,
                                          child: Scrollbar(
                                              child: ListView.separated(
                                            itemCount: _paths != null &&
                                                    _paths.isNotEmpty
                                                ? _paths.length
                                                : 1,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              final bool isMultiPath =
                                                  _paths != null &&
                                                      _paths.isNotEmpty;
                                              final String name =
                                                  'File $index: ' +
                                                      (isMultiPath
                                                          ? _paths
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList()[index]
                                                          : _fileName ?? '...');
                                              final path = _paths
                                                  .map((e) => e.path)
                                                  .toList()[index]
                                                  .toString();

                                              return ListTile(
                                                title: Text(
                                                  name,
                                                ),
                                                subtitle: Text(path),
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext context,
                                                        int index) =>
                                                    const Divider(),
                                          )),
                                        )
                                      : const SizedBox(),
                        ),
                        new Text(
                          'Click here to Upload',
                          style: new TextStyle(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(25),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ])),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                new Text(
                  'Comment (Optional)',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(25),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Container(
                width: 700.w,
                child: TextField(
                  controller: _controller,
                  onSubmitted: (text) => print(_controller.text),
                  enabled: true,
                  minLines: 13,
                  maxLines: 25,
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(20),
                    ),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          width: 1.0, color: Color.fromRGBO(52, 51, 51, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              Container(
                  height: 90.h,
                  width: 700.w,
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: RaisedButton(
                    elevation: 0,
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                    },
                    child: Text('SEND RESPONSE',
                        style: TextStyle(
                            fontFamily: 'Circular STD', fontSize: 16)),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                  height: 90.h,
                  width: 700.w,
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: RaisedButton(
                    elevation: 0,
                    textColor: Colors.black,
                    color: Color.fromRGBO(232, 232, 232, 0.88),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new History()),
                      );
                    },
                    child: Text('View message history',
                        style: TextStyle(
                            fontFamily: 'Circular STD', fontSize: 16)),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 45.h),
                ],
              ),
            ],
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

//Compose Message
class ComposeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Compose Message',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 30.h),
                ],
              ),
              Container(
                width: 700.w,
                height: 90.h,
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: new Text(
                  'If you have any questions or get stuck please contact us in the relevant department',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(25),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                height: 120.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextField(
                    enabled: true,
                    minLines: 13,
                    maxLines: 25,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Subject",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(18),
                      ),
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
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                height: 300.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextField(
                    enabled: true,
                    minLines: 13,
                    maxLines: 525,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Message",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                      ),
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
                  ),
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
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: RaisedButton(
                    elevation: 0,
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                    },
                    child: Text('SUBMIT',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(25),
                        )),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
            ],
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

//Support

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Support',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 65.h),
                ],
              ),
              Container(
                width: 700.w,
                height: 90.h,
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: new Text(
                  "When you are stuck in something don't waste your time just let us know, we are here to assist you.",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(25),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  textAlign: TextAlign.center,
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
                padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    enabled: true,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(18),
                      ),
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
                        return "Name cannot be empty";
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
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                height: 90.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    enabled: true,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(18),
                      ),
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
                        return "Email cannot be empty";
                      } else {
                        return null;
                      }
                    },
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
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                height: 120.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextField(
                    enabled: true,
                    minLines: 13,
                    maxLines: 25,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Subject",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(18),
                      ),
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
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                height: 300.h,
                width: 700.w,
                padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextField(
                    enabled: true,
                    minLines: 13,
                    maxLines: 525,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Message",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                      ),
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
                  ),
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
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: RaisedButton(
                    elevation: 0,
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PaymentSummary()),
                      );
                    },
                    child: Text('SUBMIT',
                        style: TextStyle(
                            fontFamily: 'Circular STD', fontSize: 16)),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
            ],
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

//history
class History extends StatelessWidget with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return MaterialApp(
      title: 'Welcome to MSBM',
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("Clicked");
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Notifications()),
                  );
                },
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: new Stack(alignment: Alignment.bottomCenter, children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10)),
            SizedBox(
              height: 200.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(34, 32, 92, 1),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black,
                      blurRadius: 0.5,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      "images/rec2.jpg",
                    ),
                    fit: BoxFit.contain,
                  )),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(height: 67.h),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 229, 229, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 450.w,
                          height: 128.h,
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                              Expanded(
                                  child: Text(
                                'Hello there, how can I be of help?',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(30),
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              )),
                            ],
                          )),
                      SizedBox(width: 250.w),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 50.h),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 250.w),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(173, 0, 0, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 450.w,
                            height: 128.h,
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(0, 30, 550, 0)),
                                Expanded(
                                    child: Text(
                                  'I am having varying issues...',
                                  style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                )),
                              ],
                            )),
                      ]),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 50.h),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 229, 229, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 450.w,
                          height: 128.h,
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                              Expanded(
                                  child: Text(
                                'Okay kindly detail this issues for us',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(30),
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              )),
                            ],
                          )),
                      SizedBox(width: 250.w),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 50.h),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 250.w),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(173, 0, 0, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 450.w,
                            height: 128.h,
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(0, 30, 550, 0)),
                                Expanded(
                                    child: Text(
                                  'Inability to enroll.',
                                  style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(30),
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                )),
                              ],
                            )),
                      ]),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 400.h),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 90.h,
                            width: 350.w,
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                            child: RaisedButton(
                              elevation: 0,
                              textColor: Colors.white,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              onPressed: () {
                                print("Clicked");
                              },
                              child: Text('SOLVED',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: 16)),
                            )),
                        SizedBox(width: 10.w),
                        Container(
                            height: 90.h,
                            width: 350.w,
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                            child: RaisedButton(
                              elevation: 0,
                              textColor: Colors.white,
                              color: Color.fromRGBO(173, 0, 0, 1),
                              onPressed: () {
                                print("Clicked");
                              },
                              child: Text('CLOSED',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: 16)),
                            )),
                      ]),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 50.h),
                    ],
                  ),
                ],
              ),
            ),
          ]),
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

class EditEducation extends StatefulWidget {
  @override
  _EditEducationState createState() => _EditEducationState();
}

class _EditEducationState extends State<EditEducation> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "1996"),
    ListItem(2, "1995"),
    ListItem(3, "2010"),
    ListItem(4, "2020")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;
  ListItem _selectedItem2;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
    _selectedItem2 = _dropdownMenuItems[1].value;
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

  // For CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.

  final schoolController = TextEditingController();
  final studyController = TextEditingController();
  final qualificationController = TextEditingController();

  Future accountCreated() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller

    String school = schoolController.text;
    String study = studyController.text;
    String qualification = qualificationController.text;

    // SERVER LOGIN API URL
    var url = 'https://ims.lixir.com.ng/api/v1/user/login';

    // Store all data with Param Name.
    var data = {
      'school': school,
      'study': study,
      'qualification': qualification,
    };

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If the Response Message is Matched.
    if (message.user.id == 2) {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      Future<void> saveData(context) async {
        Data myData = Data(data: '', id: 1);

        await FlutterSession().set('token', myData);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CreateAccount()));
      }
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 17.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                new Text(
                  'Education',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(35),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    controller: schoolController,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "School/Instituion",
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
                        return "School/Instituion cannot be empty";
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
                  SizedBox(height: 25.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    controller: studyController,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Study",
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
                        return "Study cannot be empty";
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
                  SizedBox(height: 15),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    controller: qualificationController,
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Qualification Recieved",
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
                        return "Qualification Recieved cannot be empty";
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
                  SizedBox(height: 25.h),
                ],
              ),
              SizedBox(
                height: 90.h,
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
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
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15.h),
                ],
              ),
              SizedBox(
                height: 90.h,
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        style: new TextStyle(
                          color: Colors.grey,
                          fontFamily: "Circular STD",
                          fontStyle: FontStyle.normal,
                        ),
                        value: _selectedItem2,
                        items: _dropdownMenuItems,
                        onChanged: (value) {
                          setState(() {
                            _selectedItem2 = value;
                          });
                        }),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: FloatingActionButton(
                    child: new Icon(Icons.add),
                    backgroundColor: new Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {}),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                  height: 100.h,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {},
                    child: Text('SAVE CHANGES',
                        style: TextStyle(
                            fontFamily: 'Circular STD', fontSize: 16)),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 55.h),
                ],
              ),
            ],
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

//Personal Information

class PersonalInformation extends StatefulWidget {
  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Country"),
    ListItem(2, "Nigeria"),
    ListItem(3, "USA"),
    ListItem(4, "UAE")
  ];

  List<ListItem> _dropdownItems5 = [
    ListItem(1, "Title"),
    ListItem(2, "Mr"),
    ListItem(3, "Mrs"),
    ListItem(4, "Miss")
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

  List<ListItem> _dropdownItems4 = [
    ListItem(1, "Marital Status"),
    ListItem(2, "Single"),
    ListItem(3, "Married"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems2;
  ListItem _selectedItem2;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems3;
  ListItem _selectedItem3;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems4;
  ListItem _selectedItem4;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems5;
  ListItem _selectedItem5;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _dropdownMenuItems2 = buildDropDownMenuItems(_dropdownItems2);
    _dropdownMenuItems3 = buildDropDownMenuItems(_dropdownItems3);
    _dropdownMenuItems4 = buildDropDownMenuItems(_dropdownItems4);
    _dropdownMenuItems5 = buildDropDownMenuItems(_dropdownItems5);
    _selectedItem = _dropdownMenuItems[0].value;
    _selectedItem2 = _dropdownMenuItems2[0].value;
    _selectedItem3 = _dropdownMenuItems3[0].value;
    _selectedItem4 = _dropdownMenuItems4[0].value;
    _selectedItem5 = _dropdownMenuItems5[0].value;
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

  // For CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.

  final schoolController = TextEditingController();
  final studyController = TextEditingController();
  final qualificationController = TextEditingController();

  Future accountCreated() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller

    String school = schoolController.text;
    String study = studyController.text;
    String qualification = qualificationController.text;

    // SERVER LOGIN API URL
    var url = 'https://ims.lixir.com.ng/api/v1/user/login';

    // Store all data with Param Name.
    var data = {
      'school': school,
      'study': study,
      'qualification': qualification,
    };

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If the Response Message is Matched.
    if (message.user.id == 2) {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      Future<void> saveData(context) async {
        Data myData = Data(data: '', id: 1);

        await FlutterSession().set('token', myData);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CreateAccount()));
      }
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 30.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                new Text(
                  'Personal Information',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(35),
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Container(
                  height: 80.h,
                  width: 700.w,
                  color: Color.fromRGBO(229, 229, 229, 1),
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'FULL NAME',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(30),
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      )),
                    ],
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 18.h),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      textColor: Color.fromRGBO(173, 0, 0, 1),
                      child: Text(
                        'Your full name as it should appear on your certificate',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(25),
                            color: Color.fromRGBO(173, 0, 0, 1)),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                  height: 80.h,
                  width: 700.w,
                  color: Color.fromRGBO(209, 236, 241, 1),
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 550, 0)),
                      Expanded(
                          child: Text(
                        'Your Certificate name can ONLY be changed ONCE and can take up to 24 hours before ot appearing on your dashboard',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(18),
                          color: Color.fromRGBO(12, 84, 96, 1),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      )),
                    ],
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 18.h),
                ],
              ),
              Container(
                height: 90.h,
                width: 700.w,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 1,
                      style: new TextStyle(
                        color: Colors.grey,
                        fontFamily: "Circular STD",
                        fontStyle: FontStyle.normal,
                      ),
                      value: _selectedItem5,
                      items: _dropdownMenuItems5,
                      onChanged: (value) {
                        setState(() {
                          _selectedItem5 = value;
                        });
                      }),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "First Name cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
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
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "Last Name cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
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
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Middle Name",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "Middle Name cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.name,
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
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "Phone Number cannot be empty";
                      } else {
                        return null;
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
                  SizedBox(height: 16.h),
                ],
              ),
              Container(
                height: 90.h,
                width: 700.w,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 1,
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
                  SizedBox(height: 16.h),
                ],
              ),
              Container(
                height: 90.h,
                width: 700.w,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 1,
                      style: new TextStyle(
                        color: Colors.grey,
                        fontFamily: "Circular STD",
                        fontStyle: FontStyle.normal,
                      ),
                      value: _selectedItem4,
                      items: _dropdownMenuItems4,
                      onChanged: (value) {
                        setState(() {
                          _selectedItem4 = value;
                        });
                      }),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: " Date of Birth YYYY-MM-DD ",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "Date of Birth YYYY-MM-DD  cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.datetime,
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
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Current Address",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "Address  cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.streetAddress,
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
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "State",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "State cannot be empty";
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
                  SizedBox(height: 16.h),
                ],
              ),
              SizedBox(
                width: 700.w,
                child: Material(
                  elevation: 01.0,
                  shadowColor: Colors.black,
                  child: TextFormField(
                    cursorColor: Color.fromRGBO(252, 252, 252, 1),
                    decoration: new InputDecoration(
                      labelText: "Postal Code",
                      labelStyle: TextStyle(color: Colors.grey),
                      fillColor: Color.fromRGBO(229, 229, 229, 1),
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
                        return "Postal Code cannot be empty";
                      } else {
                        return null;
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
                  SizedBox(height: 11.h),
                ],
              ),
              Container(
                height: 90.h,
                width: 700.w,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      elevation: 1,
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
                  SizedBox(height: 8.h),
                ],
              ),
              Container(
                  height: 100.h,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PaymentSummary()),
                      );
                    },
                    child: Text('SAVE CHANGES',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(25),
                        )),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 45.h),
                ],
              ),
            ],
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

//ViewCoursesList

class ViewCoursesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              print("Clicked");
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Notifications()),
              );
            },
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 17.h),
                ],
              ),
              new Text(
                'Business Management',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(40),
                  fontFamily: 'Circular STD',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25),
                ],
              ),

              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                Expanded(
                  child: Text(
                    'Professional Certificate Courses in Business Management',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(28),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  width: 100.h,
                )
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                Expanded(
                  child: Text(
                    'These are short online certificate courses designed to help you develop professionally and achieve your career goals, while you earn a professional certificate which qualifies you for the appropriate continuous professional development (CPD).',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(21),
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                  ),
                ),
                SizedBox(
                  width: 50.h,
                )
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 24.h),
                ],
              ),

              //cards for slider
              Row(children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Stack(
                  children: [
                    Container(
                      height: 550.h,
                      width: 350.w,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        color: Color.fromRGBO(241, 241, 241, 1),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/bg4.jpg'),
                              height: 200.h,
                              width: 350.w,
                              fit: BoxFit.fitHeight,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10.w),
                              ],
                            ),
                            Row(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                              Text(
                                'MSBM',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 6,
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ]),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10.h),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Text(
                                'Professional Certificate in Customer Service Skills (Handling Difficult Customers).',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(21),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 15.h),
                              ],
                            ),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                              ImageIcon(
                                AssetImage('images/hourglass.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                '2 Weeks',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                              SizedBox(
                                width: 32.w,
                              ),
                              ImageIcon(
                                AssetImage('images/clock.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '3 Hours Per Week',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ]),
                            Column(children: <Widget>[
                              SizedBox(
                                height: 17.h,
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                              ImageIcon(
                                AssetImage('images/tag.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                ' EUR 29',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                              SizedBox(
                                width: 35.w,
                              ),
                              ImageIcon(
                                AssetImage('images/pc.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                ' Online ',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ]),
                            Column(children: <Widget>[
                              SizedBox(
                                height: 27.h,
                              ),
                            ]),
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0)),
                                SizedBox(
                                  height: 40.h,
                                  width: 300.w,
                                  child: RaisedButton(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        side: BorderSide(
                                            color: Color.fromRGBO(0, 0, 0, 1))),
                                    textColor: Colors.white,
                                    color: Colors.grey[900],
                                    child: Text("FIND OUT MORE",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(19),
                                          fontFamily: 'Circular STD',
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ViewCourse()),
                                      );
                                    },
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(height: 4.h),
                                  ],
                                ),
                                Row(),
                                SizedBox(
                                  height: 40.h,
                                  width: 300.w,
                                  child: RaisedButton(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        side: BorderSide(
                                            color:
                                                Color.fromRGBO(173, 0, 0, 1))),
                                    textColor: Color.fromRGBO(173, 0, 0, 1),
                                    color: Color.fromRGBO(241, 241, 241, 1),
                                    child: Text("SAVED",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(19),
                                          fontFamily: 'Circular STD',
                                        )),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // second Card
                Stack(
                  children: [
                    Container(
                      height: 550.h,
                      width: 350.w,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        color: Color.fromRGBO(241, 241, 241, 1),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/bg4.jpg'),
                              height: 200.h,
                              width: 350.w,
                              fit: BoxFit.fitHeight,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10.w),
                              ],
                            ),
                            Row(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                              Text(
                                'MSBM',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 6,
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ]),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10.h),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Text(
                                'Professional Certificate in Customer Service Skills (Handling Difficult Customers).',
                                style: TextStyle(
                                    fontFamily: 'Circular STD',
                                    fontSize: ScreenUtil().setSp(21),
                                    fontStyle: FontStyle.normal,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 15.h),
                              ],
                            ),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                              ImageIcon(
                                AssetImage('images/hourglass.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                '2 Weeks',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                              SizedBox(
                                width: 32.w,
                              ),
                              ImageIcon(
                                AssetImage('images/clock.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '3 Hours Per Week',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ]),
                            Column(children: <Widget>[
                              SizedBox(
                                height: 17.h,
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                              ImageIcon(
                                AssetImage('images/tag.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                ' EUR 29',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                              SizedBox(
                                width: 35.w,
                              ),
                              ImageIcon(
                                AssetImage('images/pc.png'),
                                size: ScreenUtil().setSp(20),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                ' Online ',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(17),
                                  fontStyle: FontStyle.normal,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ]),
                            Column(children: <Widget>[
                              SizedBox(
                                height: 27.h,
                              ),
                            ]),
                            Column(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0)),
                                SizedBox(
                                  height: 40.h,
                                  width: 300.w,
                                  child: RaisedButton(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        side: BorderSide(
                                            color: Color.fromRGBO(0, 0, 0, 1))),
                                    textColor: Colors.white,
                                    color: Colors.grey[900],
                                    child: Text("FIND OUT MORE",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(19),
                                          fontFamily: 'Circular STD',
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ViewCourse()),
                                      );
                                    },
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    SizedBox(height: 4.h),
                                  ],
                                ),
                                Row(),
                                SizedBox(
                                  height: 40.h,
                                  width: 300.w,
                                  child: RaisedButton(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        side: BorderSide(
                                            color:
                                                Color.fromRGBO(173, 0, 0, 1))),
                                    textColor: Color.fromRGBO(173, 0, 0, 1),
                                    color: Color.fromRGBO(241, 241, 241, 1),
                                    child: Text("SAVED",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(19),
                                          fontFamily: 'Circular STD',
                                        )),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 65.h),
            ],
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

/// Forces portrait-only mode application-wide
/// Use this Mixin on the main app widget i.e. app.dart
/// Flutter's 'App' has to extend Stateless widget.
///
/// Call `super.build(context)` in the main build() method
/// to enable portrait only mode
mixin PortraitModeMixin on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return null;
  }
}

/// Forces portrait-only mode on a specific screen
/// Use this Mixin in the specific screen you want to
/// block to portrait only mode.
///
/// Call `super.build(context)` in the State's build() method
/// and `super.dispose();` in the State's dispose() method
mixin PortraitStatefulModeMixin<T extends StatefulWidget> on State<T> {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return null;
  }

  @override
  void dispose() {
    _enableRotation();
  }
}

/// blocks rotation; sets orientation to: portrait
void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

void _enableRotation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Support',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 65.h),
                ],
              ),
              Container(
                width: 700.w,
                height: 60.h,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'If you have any questions or get stuck please contact us in the relevant department.',
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(25),
                    color: Colors.grey[900],
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  textAlign: TextAlign.start,
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 45.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Academic Issues',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 455.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AcademicIssues()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Technical Issues',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 464.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TechnicalIssues()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Student Issues',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 480.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentIssues()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Finance Issues',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 482.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinanceIssues()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 5.h),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Container(
                    height: 90.h,
                    child: RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'Support',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 554.w),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: ScreenUtil().setSp(25),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Support()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
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

class StartQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Quiz',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 65.h),
                ],
              ),
              new Text(
                'Multiple Choice Quiz:',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(40),
                  fontFamily: 'Circular STD',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              new Text(
                'Kindly select the nearest correct from the given options.',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(24),
                  fontFamily: 'Circular STD',
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 50.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 45.h,
                    width: 250.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'Attempt all the MCQs',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 45.h,
                    width: 450.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'All MCQs carry equal mark',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 45.h,
                    width: 450.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'There is no negative marking',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 65.h,
                    width: 500.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'There are three attempts allowed to achieve 100% correct answers ',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 65.h,
                    width: 500.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'All questions are taken from the slides of the lecture',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 65.h,
                    width: 500.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'The correct answer would be shown after completion of the quiz',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/check1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 65.h,
                    width: 500.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.h),
                        Text(
                          'Take your time and test your learning',
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(22),
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Container(
                  height: 90.h,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Quiz()),
                      );
                    },
                    child: Text(
                      'TAKE QUIZ',
                      style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(24),
                          fontWeight: FontWeight.normal),
                    ),
                  )),
            ],
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

//Quiz Questions

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => new _QuizState();
}

class _QuizState extends State<Quiz> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      switch (_radioValue2) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;

      switch (_radioValue3) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;

      switch (_radioValue4) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;

      switch (_radioValue5) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return new MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Quiz',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtil().setSp(35),
                ),
                textAlign: TextAlign.center,
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: new Container(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 65.h),
                        ],
                      ),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                        new Text(
                          'Question 1',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(35),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Container(
                        width: 700.w,
                        child: new Text(
                          'The unrestricted sharing of data and business processes among any connected applications and data sources in the enterprise is called:',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.h),
                        ],
                      ),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 2,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 3,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                        new Text(
                          'Question 2',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(35),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Container(
                        width: 700.w,
                        child: new Text(
                          'The unrestricted sharing of data and business processes among any connected applications and data sources in the enterprise is called:',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.h),
                        ],
                      ),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: _radioValue2,
                                onChanged: _handleRadioValueChange2,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 1,
                                groupValue: _radioValue2,
                                onChanged: _handleRadioValueChange2,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 2,
                                groupValue: _radioValue2,
                                onChanged: _handleRadioValueChange2,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 3,
                                groupValue: _radioValue2,
                                onChanged: _handleRadioValueChange2,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                        new Text(
                          'Question 3',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(35),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Container(
                        width: 700.w,
                        child: new Text(
                          'The unrestricted sharing of data and business processes among any connected applications and data sources in the enterprise is called:',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.h),
                        ],
                      ),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: _radioValue3,
                                onChanged: _handleRadioValueChange3,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 1,
                                groupValue: _radioValue3,
                                onChanged: _handleRadioValueChange3,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 2,
                                groupValue: _radioValue3,
                                onChanged: _handleRadioValueChange3,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 3,
                                groupValue: _radioValue3,
                                onChanged: _handleRadioValueChange3,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 65.h),
                        ],
                      ),
                      Container(
                        height: 90.h,
                        width: 700.w,
                        child: new RaisedButton(
                          onPressed: validateAnswers,
                          child: new Text(
                            'SUBMIT QUIZ',
                            style: new TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          color: Color.fromRGBO(173, 0, 0, 1),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(0.0)),
                        ),
                      ),
                    ],
                  ),
                ))));
  }

  void resetSelection() {
    _handleRadioValueChange1(-1);
    _handleRadioValueChange2(-1);
    _handleRadioValueChange3(-1);
    _handleRadioValueChange4(-1);
    _handleRadioValueChange5(-1);
    correctScore = 0;
  }

  void validateAnswers() {
    if (_radioValue1 == -1 &&
        _radioValue2 == -1 &&
        _radioValue3 == -1 &&
        _radioValue4 == -1 &&
        _radioValue5 == -1) {
      Fluttertoast.showToast(
          msg: 'Please select atleast one answer',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          msg: 'Your total score is: $correctScore out of 5',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}

//Quiz Results
class QuizResult extends StatefulWidget {
  @override
  _QuizResultState createState() => new _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      switch (_radioValue2) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;

      switch (_radioValue3) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;

      switch (_radioValue4) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;

      switch (_radioValue5) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return new MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Quiz Result',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtil().setSp(35),
                ),
                textAlign: TextAlign.center,
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: new Container(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 65.h),
                        ],
                      ),
                      Container(
                          height: 120.h,
                          width: 700.w,
                          color: Color.fromRGBO(173, 253, 205, 1),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(50, 10, 0, 5)),
                              Text(
                                'Congratulations! You passed',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(34),
                                  color: Color.fromRGBO(5, 61, 34, 1),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.ltr,
                              ),
                              SizedBox(height: 4.h),
                              Expanded(
                                  child: Text(
                                'Score 80%',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(24),
                                  color: Color.fromRGBO(5, 61, 34, 1),
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                              )),
                            ],
                          )),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 65.h),
                        ],
                      ),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                        new Text(
                          'Question 1',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(35),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Container(
                        width: 700.w,
                        child: new Text(
                          'The unrestricted sharing of data and business processes among any connected applications and data sources in the enterprise is called:',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.h),
                        ],
                      ),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 2,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 3,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Container(
                              height: 90.h,
                              width: 700.w,
                              color: Color.fromRGBO(173, 253, 205, 1),
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(50, 0, 0, 5)),
                                  Text(
                                    'Correct',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(30),
                                      color: Color.fromRGBO(5, 61, 34, 1),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ],
                              )),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                        new Text(
                          'Question 2',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(35),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Container(
                        width: 700.w,
                        child: new Text(
                          'The unrestricted sharing of data and business processes among any connected applications and data sources in the enterprise is called:',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.h),
                        ],
                      ),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 2,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 3,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          height: 90.h,
                          width: 700.w,
                          color: Color.fromRGBO(173, 253, 205, 1),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(50, 0, 0, 5)),
                              Text(
                                'Correct',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(30),
                                  color: Color.fromRGBO(5, 61, 34, 1),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.ltr,
                              ),
                            ],
                          )),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                        new Text(
                          'Question 3',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(35),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 35.h),
                        ],
                      ),
                      Container(
                        width: 700.w,
                        child: new Text(
                          'The unrestricted sharing of data and business processes among any connected applications and data sources in the enterprise is called:',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(30),
                            fontFamily: 'Circular STD',
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 15.h),
                        ],
                      ),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: [
                              new Radio(
                                value: 0,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 1,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 2,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              new Radio(
                                value: 3,
                                groupValue: _radioValue1,
                                onChanged: _handleRadioValueChange1,
                              ),
                              Expanded(
                                child: new Text(
                                  'Enterprise Application Integration',
                                  style: new TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                    fontFamily: 'Circular STD',
                                  ),
                                  overflow: TextOverflow.clip,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                        ],
                      ),
                      new Divider(
                        height: 5.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 65.h),
                        ],
                      ),
                      Container(
                        height: 90.h,
                        width: 700.w,
                        child: new RaisedButton(
                          onPressed: validateAnswers,
                          child: new Text(
                            'SUBMIT QUIZ',
                            style: new TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          color: Color.fromRGBO(173, 0, 0, 1),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(0.0)),
                        ),
                      ),
                    ],
                  ),
                ))));
  }

  void resetSelection() {
    _handleRadioValueChange1(-1);
    _handleRadioValueChange2(-1);
    _handleRadioValueChange3(-1);
    _handleRadioValueChange4(-1);
    _handleRadioValueChange5(-1);
    correctScore = 0;
  }

  void validateAnswers() {
    if (_radioValue1 == -1 &&
        _radioValue2 == -1 &&
        _radioValue3 == -1 &&
        _radioValue4 == -1 &&
        _radioValue5 == -1) {
      Fluttertoast.showToast(
          msg: 'Please select atleast one answer',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          msg: 'Your total score is: $correctScore out of 5',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}

class LoginUser extends StatefulWidget {
  LoginUserState createState() => LoginUserState();
}

class LoginUserState extends State {
  // For CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER LOGIN API URL
    var url = 'https://ims.lixir.com.ng/api/v1/user/login';

    // Store all data with Param Name.
    var data = {'email': email, 'password': password};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If the Response Message is Matched.
    if (message.user.id == 2) {
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProfileScreen(email: emailController.text)));
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('User Login Form', style: TextStyle(fontSize: 21))),
          Divider(),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter Your Email Here'),
              )),
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordController,
                autocorrect: true,
                obscureText: true,
                decoration:
                    InputDecoration(hintText: 'Enter Your Password Here'),
              )),
          RaisedButton(
            onPressed: userLogin,
            color: Colors.green,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            child: Text('Click Here To Login'),
          ),
          Visibility(
              visible: visible,
              child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator())),
        ],
      ),
    )));
  }
}

class ProfileScreen extends StatelessWidget {
// Creating String Var to Hold sent Email.
  final String email;

// Receiving Email using Constructor.
  ProfileScreen({Key key, @required this.email}) : super(key: key);

// User Logout Function.
  logout(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Profile Screen'),
                automaticallyImplyLeading: false),
            body: Center(
                child: Column(
              children: <Widget>[
                FutureBuilder(
                    future: FlutterSession().get('myData'),
                    builder: (context, snapshot) {
                      return Text(snapshot.hasData
                          ? snapshot.data['id'].toString() +
                              "|" +
                              snapshot.data['data']
                          : 'Loading...');
                    }),
                Container(
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: Text('Email = ' + '\n' + email,
                        style: TextStyle(fontSize: 20))),
                RaisedButton(
                  onPressed: () {
                    logout(context);
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('Click Here To Logout'),
                ),
              ],
            ))));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder(
          future: saveData(context),
          builder: (context, snapshot) {
            return Text("You will not see this");
          }),
    );
  }

  Future<void> saveData(context) async {
    Data myData = Data(data: "Lorem ipsum, something, something...", id: 1);

    await FlutterSession().set('myData', myData);
    Navigator.push(context, MaterialPageRoute(builder: (_context) => Page2()));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: FutureBuilder(
            future: FlutterSession().get('myData'),
            builder: (context, snapshot) {
              return Text(snapshot.hasData
                  ? snapshot.data['id'].toString() + "|" + snapshot.data['data']
                  : 'Loading...');
            }));
  }
}

class Saving extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder(
          future: saveData(context),
          builder: (context, snapshot) {
            return Text("You will not see this");
          }),
    );
  }

  Future<void> saveData(context) async {
    Data myData = Data(
        data:
            "my data content it could be something like the token you got from the API",
        id: 1);

    await FlutterSession().set('myData', myData);
    Navigator.push(
        context, MaterialPageRoute(builder: (_context) => Reading()));
  }
}

class Reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder(
          future: FlutterSession().get('myData'),
          builder: (context, snapshot) {
            return Text(snapshot.hasData
                ? snapshot.data['id'].toString() + "|" + snapshot.data['data']
                : 'Loading...');
          }),
    );
  }
}

class M extends StatefulWidget {
  @override
  _MState createState() => _MState();
}

class _MState extends State<M> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Country'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: CountryListPick(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: Text('Choisir un pays'),
            ),
            // if you need custome picker use this
            // pickerBuilder: (context, CountryCode countryCode) {
            //   return Row(
            //     children: [
            //       Image.asset(
            //         countryCode.flagUri,
            //         package: 'country_list_pick',
            //       ),
            //       Text(countryCode.code),
            //       Text(countryCode.dialCode),
            //     ],
            //   );
            // },
            theme: CountryTheme(
              isShowFlag: true,
              isShowTitle: true,
              isShowCode: false,
              isDownIcon: true,
              showEnglishName: true,
            ),
            initialSelection: '+62',
            onChanged: (CountryCode code) {
              print(code.name);

              print(code.flagUri);
            },
          ),
        ),
      ),
    );
  }
}
