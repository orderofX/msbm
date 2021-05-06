import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginsample_app/main.dart';

class Notifications extends StatelessWidget {
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
              Column(
                children: <Widget>[
                  SizedBox(height: 16.h),
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  Container(
                    height: 115.h,
                    width: 135.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec260.jpg'),
                        fit: BoxFit.cover,
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
                      height: 110.h,
                      width: 450.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Academic Issues',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(28),
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Text(
                            'YOU HAVE 3 NEW NOTIFICATION(S)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 40.h,
                              width: 330.w,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(173, 0, 0, 1),
                                onPressed: () {
                                  print("Clicked");
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new AcademicIssues()),
                                  );
                                },
                                child: Text('View Notification',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(20),
                                    )),
                              )),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 56.h),
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  Container(
                    height: 115.h,
                    width: 135.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec261.jpg'),
                        fit: BoxFit.cover,
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
                      height: 110.h,
                      width: 450.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Assignment Issues',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(28),
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Text(
                            'YOU HAVE 3 NEW NOTIFICATION(S)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 40.h,
                              width: 330.w,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(173, 0, 0, 1),
                                onPressed: () {
                                  print("Clicked");
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new AssignmentIssues()),
                                  );
                                },
                                child: Text('View Notification',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(20),
                                    )),
                              )),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 56.h),
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  Container(
                    height: 115.h,
                    width: 135.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec262.jpg'),
                        fit: BoxFit.cover,
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
                      height: 110.h,
                      width: 450.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Technical Issues',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(28),
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Text(
                            'YOU HAVE 3 NEW NOTIFICATION(S)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 40.h,
                              width: 330.w,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(173, 0, 0, 1),
                                onPressed: () {
                                  print("Clicked");
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new TechnicalIssues()),
                                  );
                                },
                                child: Text('View Notification',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(20),
                                    )),
                              )),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 56.h),
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  Container(
                    height: 115.h,
                    width: 135.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec263.jpg'),
                        fit: BoxFit.cover,
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
                      height: 110.h,
                      width: 450.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Finance Issues',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(28),
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Text(
                            'YOU HAVE 3 NEW NOTIFICATION(S)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 40.h,
                              width: 330.w,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(173, 0, 0, 1),
                                onPressed: () {
                                  print("Clicked");
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new FinanceIssues()),
                                  );
                                },
                                child: Text('View Notification',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(20),
                                    )),
                              )),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 56.h),
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                  Container(
                    height: 115.h,
                    width: 135.w,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec264.jpg'),
                        fit: BoxFit.cover,
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
                      height: 110.h,
                      width: 450.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            'Student Issues',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(28),
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          Text(
                            'YOU HAVE 3 NEW NOTIFICATION(S)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(20),
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 40.h,
                              width: 330.w,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: RaisedButton(
                                textColor: Colors.white,
                                color: Color.fromRGBO(173, 0, 0, 1),
                                onPressed: () {
                                  print("Clicked");
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new StudentIssues()),
                                  );
                                },
                                child: Text('View Notification',
                                    style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(20),
                                    )),
                              )),
                        ],
                      )),
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
