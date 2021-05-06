import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/home.dart';
import 'package:loginsample_app/pages/notifications.dart';
//import 'package:loginsample_app/util/printscreen.dart';
import 'package:loginsample_app/util/widgets.dart';

class ViewCourses extends StatefulWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Home(),
      );

  @override
  _ViewCoursesState createState() => _ViewCoursesState();
}

class _ViewCoursesState extends State<ViewCourses> {
  @override
  void initState() {
    super.initState();
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
                  SizedBox(height: 25.h),
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
                      child: Text(
                        'View more on short courses in Nigeria ',
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(25),
                          fontFamily: 'Circular STD',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewCoursesList()),
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
