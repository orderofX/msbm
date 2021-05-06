import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';

import 'package:loginsample_app/pages/home.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/pages/viewcourses.dart';

import 'notifications.dart';

class ExplorePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Home(),
      );
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        title: Text(
          ' Explore Topic',
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
      body: IndexedStack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              //    FutureBuilder(
              //      future: FlutterSession().get('myData'),
              //       builder: (context, snapshot) {
              //         return Text(snapshot.hasData
              //            ? snapshot.data['id'].toString() +
              //             "|" +
              //            snapshot.data['data']
              //       : 'Loading...');
              //   }),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  new Text(
                    "Degree Programmes",
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
                    SizedBox(height: 20.h),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    Container(
                      height: 90.h,
                      child: RaisedButton(
                        elevation: 0,
                        color: Color.fromRGBO(252, 252, 252, 1),
                        child: Row(
                          children: [
                            Text(
                              "Master's Degree",
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().setSp(25),
                                fontFamily: 'Circular STD',
                                fontStyle: FontStyle.normal,
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
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 9.h),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 9.h),
                      ],
                    ),
                    Container(
                      height: 90.h,
                      child: RaisedButton(
                        elevation: 0,
                        color: Color.fromRGBO(252, 252, 252, 1),
                        child: Row(
                          children: [
                            Text(
                              "International Postgraduate Diplomas",
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().setSp(25),
                                fontFamily: 'Circular STD',
                                fontStyle: FontStyle.normal,
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
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 9.h),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 9.h),
                      ],
                    ),
                    Container(
                      height: 90.h,
                      child: RaisedButton(
                        elevation: 0,
                        color: Color.fromRGBO(252, 252, 252, 1),
                        child: Row(
                          children: [
                            Text(
                              "Bachelor's Degree",
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().setSp(25),
                                fontFamily: 'Circular STD',
                                fontStyle: FontStyle.normal,
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
                    ),
                  ],
                ),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 9.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 9.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  new Text(
                    "Executive Education Courses",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: ScreenUtil().setSp(35),
                      fontFamily: 'Circular STD',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ]),
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Container(
                height: 90.h,
                child: RaisedButton(
                  elevation: 0,
                  color: Color.fromRGBO(252, 252, 252, 1),
                  child: Row(
                    children: [
                      Text(
                        "Professional Executive Courses",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(25),
                          fontFamily: 'Circular STD',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewCourses()),
                    );
                  },
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 9.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 9.h),
                ],
              ),
              Container(
                height: 90.h,
                child: RaisedButton(
                  elevation: 0,
                  color: Color.fromRGBO(252, 252, 252, 1),
                  child: Row(
                    children: [
                      Text(
                        "Advanced Executive Courses",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(25),
                          fontFamily: 'Circular STD',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewCourses()),
                    );
                  },
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 9.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 9.h),
                ],
              ),
              Container(
                height: 90.h,
                child: RaisedButton(
                  elevation: 0,
                  color: Color.fromRGBO(252, 252, 252, 1),
                  child: Row(
                    children: [
                      Text(
                        "Online SEMP",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(25),
                          fontFamily: 'Circular STD',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewCourses()),
                    );
                  },
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 40.h),
                ],
              ),
              Row(children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                new Text(
                  "Courses",
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
                  SizedBox(height: 40.h),
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
                            'Business Management',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 402.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Health and Psychology',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 400.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Business Law',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 500.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Information Technology',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 392.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Personal Development',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 404.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Teaching and Education',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 385.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Health and Safety',
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 2.h),
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
                            'Finance and Accounting',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 385.w),
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
                              builder: (context) => ViewCourses()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
            ],
          ),
        ),
      ]),
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
