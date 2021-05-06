import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/viewcourse.dart';
import 'package:percent_indicator/percent_indicator.dart';

MaterialButton longButtons(
  String title,
  Function fun, {
  Color color: const Color.fromRGBO(173, 0, 0, 1),
  Color textColor: Colors.white,
  TextStyle textStyle,
}) {
  return MaterialButton(
    onPressed: fun,
    textColor: textColor,
    color: color,
    child: SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    ),
    height: 95.h,
    minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
  );
}

Widget ideaDetailCard(
  String partners,
  String coursename,
  String fee,
  String format,
  String duration,
  String effort,
  //Function fun,
) {
  return Stack(
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
                image: AssetImage('images/rec3.png'),
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
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                Text(
                  partners,
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
                height: 100.h,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Expanded(
                  flex: 4,
                  child: Text(
                    coursename,
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
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15.h),
                ],
              ),
              Row(children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                ImageIcon(
                  AssetImage('images/hourglass.png'),
                  size: ScreenUtil().setSp(20),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  duration,
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
                  effort,
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
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                ImageIcon(
                  AssetImage('images/tag.png'),
                  size: ScreenUtil().setSp(20),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  fee,
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
                  format,
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
                  Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 0)),
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
                    child: RaisedButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(color: Color.fromRGBO(0, 0, 0, 1))),
                      textColor: Colors.white,
                      color: Colors.grey[900],
                      child: Text("FIND OUT MORE",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(19),
                            fontFamily: 'Circular STD',
                          )),
                      onPressed: () {
                        print("Clicked");

                        MaterialPageRoute(builder: (context) => ViewCourse());
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
                          borderRadius: BorderRadius.circular(0.0),
                          side:
                              BorderSide(color: Color.fromRGBO(173, 0, 0, 1))),
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
  );
}

//Circular Progress bar for courses completion

class _CircularProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CircularProgressIndicatorAppState();
  }
}

class _CircularProgressIndicatorAppState
    extends State<_CircularProgressIndicatorApp> {
  double _progress = 0;

  void startTimer() {
    new Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) => setState(
        () {
          if (_progress == 1) {
            timer.cancel();
          } else {
            _progress += 0.2;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      "Last Active Day: Oct 09, 2020",
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
                    width: 700.w,
                    height: 90.h,
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: new Text(
                      "Remaining Days: Course Expired",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new CircularPercentIndicator(
                              radius: 130.0,
                              animation: true,
                              animationDuration: 1200,
                              lineWidth: 15.0,
                              percent: 0.4,
                              center: new Text(
                                "57.8%",
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenUtil().setSp(30),
                                  fontFamily: 'Circular STD',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Color.fromRGBO(218, 218, 218, 1),
                              progressColor: Color.fromRGBO(197, 3, 119, 1)),
                          SizedBox(height: 2.h),
                          RaisedButton(
                            elevation: 0,
                            color: Color.fromRGBO(252, 252, 252, 1),
                            child: Text(
                              'In Progress',
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().setSp(25),
                                fontFamily: 'Circular STD',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _progress = 0;
                              });
                              startTimer();
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new CircularPercentIndicator(
                              radius: 130.0,
                              animation: true,
                              animationDuration: 1200,
                              lineWidth: 15.0,
                              percent: 0.7,
                              center: new Text(
                                "76.4%",
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: ScreenUtil().setSp(30),
                                  fontFamily: 'Circular STD',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Color.fromRGBO(218, 218, 218, 1),
                              progressColor: Color.fromRGBO(7, 48, 106, 1)),
                          SizedBox(height: 2.h),
                          RaisedButton(
                            elevation: 0,
                            color: Color.fromRGBO(252, 252, 252, 1),
                            child: Text(
                              'Completed',
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: ScreenUtil().setSp(25),
                                fontFamily: 'Circular STD',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _progress = 0;
                              });
                              startTimer();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircularPercentIndicator(
                          radius: 130.0,
                          animation: true,
                          animationDuration: 1200,
                          lineWidth: 15.0,
                          percent: 0.6,
                          center: new Text(
                            "57.8%",
                            style: new TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(30),
                              fontFamily: 'Circular STD',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.butt,
                          backgroundColor: Color.fromRGBO(218, 218, 218, 1),
                          progressColor: Color.fromRGBO(79, 127, 196, 1)),
                      SizedBox(height: 2.h),
                      RaisedButton(
                        elevation: 0,
                        color: Color.fromRGBO(252, 252, 252, 1),
                        child: Text(
                          'Outstanding',
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(25),
                            fontFamily: 'Circular STD',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _progress = 0;
                          });
                          startTimer();
                        },
                      ),
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
                                builder: (context) => new Certificate()),
                          );
                        },
                        child: Text('View Certificate',
                            style: TextStyle(
                                fontFamily: 'Circular STD', fontSize: 16)),
                      )),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 25.h),
                    ],
                  ),
                ]),
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

Widget startcourse(
  String partners,
  String coursename,
  String fee,
  String format,
  String duration,
  String effort,
  Function fun,
) {
  return Stack(
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
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
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
                height: 100.h,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Expanded(
                  flex: 4,
                  child: Text(
                    coursename,
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
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 15.h),
                ],
              ),
              Row(children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                ImageIcon(
                  AssetImage('images/hourglass.png'),
                  size: ScreenUtil().setSp(20),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  duration,
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
                  effort,
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
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                ImageIcon(
                  AssetImage('images/tag.png'),
                  size: ScreenUtil().setSp(20),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  fee,
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
                  format,
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
                  Padding(padding: EdgeInsets.fromLTRB(30, 0, 30, 0)),
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
                    child: RaisedButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(color: Color.fromRGBO(0, 0, 0, 1))),
                      textColor: Colors.white,
                      color: Colors.grey[900],
                      child: Text("START COURSE",
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(19),
                            fontFamily: 'Circular STD',
                          )),
                      onPressed: fun,
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
                          borderRadius: BorderRadius.circular(0.0),
                          side:
                              BorderSide(color: Color.fromRGBO(173, 0, 0, 1))),
                      textColor: Color.fromRGBO(173, 0, 0, 1),
                      color: Color.fromRGBO(241, 241, 241, 1),
                      child: Text("REMOVE",
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
  );
}
