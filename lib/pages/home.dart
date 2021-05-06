import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:loginsample_app/pages/notifications.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loginsample_app/pages/viewcourses.dart';
import 'package:loginsample_app/util/printscreen.dart';
import 'package:loginsample_app/util/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future getData() async {
    var url = 'https://serverurl/get.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    print(data.toString());
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: 70.w,
          width: 700.w,
          child: TextField(
            showCursor: false,
            textAlign: TextAlign.start,
            autofocus: false,
            decoration: InputDecoration(
                hintText: " Search Catalog ",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(218, 218, 218, 1),
                    fontFamily: 'Circular STD'),
                fillColor: Color.fromRGBO(41, 40, 40, 1),
                counterText: "",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                filled: true,
                enabledBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(2.0),
                  borderSide:
                      new BorderSide(color: Color.fromRGBO(41, 40, 40, 1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(41, 40, 40, 1),
                  ),
                ),
                focusColor: Color.fromRGBO(41, 40, 40, 1),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                )),
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontFamily: 'Circular STD'),
            keyboardType: TextInputType.text,
          ),
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
                  SizedBox(height: 17),
                ],
              ),
              new Text(
                'Explore Courses',
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
                  SizedBox(height: 20),
                ],
              ),
              new Text(
                'Short Courses in Nigeria',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(27),
                  fontFamily: 'Circular STD',
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15),
                ],
              ),
              //cards for slider
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                ]),
              ),
              SizedBox(height: 15.h),
              Container(
                width: 700.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'View more on short courses in Nigeria ',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(28),
                              fontFamily: 'Circular STD',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 55.h),
                ],
              ),
              new Text(
                'Degree Programmes in Nigeria',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(27),
                  fontFamily: 'Circular STD',
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                ]),
              ),
              SizedBox(height: 15.h),
              Container(
                width: 700.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'View more Degree Programmes in Nigeria ',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(28),
                              fontFamily: 'Circular STD',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ],
                ),
              ),

              Column(
                children: <Widget>[
                  SizedBox(height: 55.h),
                ],
              ),
              new Text(
                'Diploma Programmes in Nigeria',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(27),
                  fontFamily: 'Circular STD',
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                  ideaDetailCard(
                    'MSBM',
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                    '2 Weeks',
                    '3 Hours Per Week',
                    ' EUR 29',
                    ' Online ',
                  ),
                ]),
              ),
              SizedBox(height: 15.h),
              Container(
                width: 700.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 0,
                      color: Color.fromRGBO(252, 252, 252, 1),
                      child: Row(
                        children: [
                          Text(
                            'View more Diploma Programmes ',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(28),
                              fontFamily: 'Circular STD',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewCourses()),
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
    );
  }
}
