import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/signin.dart';

import 'notifications.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.help,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          'My Profile',
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //     FutureBuilder(
              //    future: FlutterSession().get('myData'),
              //     builder: (context, snapshot) {
              //     return Text(snapshot.hasData
              //     ? snapshot.data['id'].toString() +
              //            "|" +
              //         snapshot.data['data']
              //        : 'Loading...');
              //    }),
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          color: Color.fromRGBO(173, 0, 0, 1),
                          width: double.infinity,
                          height: 270.0,
                          child: Center(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                CircleAvatar(
                                  child: ClipOval(
                                    child: Image.asset(
                                        'images/student-avatar-male.png',
                                        width: 120,
                                        fit: BoxFit.contain),
                                  ),
                                  radius: 50.0,
                                ),
                                SizedBox(height: 7.h),
                                Container(
                                  width: 200.w,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Change Photo',
                                        style: TextStyle(
                                            fontFamily: 'Circular STD',
                                            fontSize: ScreenUtil().setSp(23),
                                            fontStyle: FontStyle.normal,
                                            color: Colors.white),
                                      ),
                                      SizedBox(width: 2.w),
                                      CupertinoButton(
                                        minSize: double.minPositive,
                                        padding: EdgeInsets.zero,
                                        child: Icon(Icons.add_a_photo,
                                            color: Colors.white,
                                            size: ScreenUtil().setSp(23)),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                new Text(
                                  'Victoria Robertson Ajayi',
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(35),
                                      color: Colors.white,
                                      fontFamily: 'Circular STD'),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10.h),
                                new Text(
                                  'Executive at Sterling Bank',
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(23),
                                      color: Colors.white,
                                      fontFamily: 'Circular STD'),
                                  textAlign: TextAlign.center,
                                ),
                              ]))),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 6),
                        ],
                      ),
                    ],
                  ),
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
                            'Courses',
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25),
                              fontFamily: 'Circular STD',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 559.w),
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
                          MaterialPageRoute(builder: (context) => Courses()),
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
                                'My Assignments',
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenUtil().setSp(25),
                                  fontFamily: 'Circular STD',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(width: 467.w),
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
                                  builder: (context) => MyAssignments()),
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
                                'Edit Information',
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenUtil().setSp(25),
                                  fontFamily: 'Circular STD',
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(width: 474.w),
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
                                  builder: (context) => EditInformation()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 55.h),
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
                                builder: (context) => new Signin()),
                          );
                        },
                        child: Text('LOGOUT',
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
