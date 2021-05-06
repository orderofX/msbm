import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/checkout.dart';
import 'package:loginsample_app/pages/notifications.dart';
//import 'package:loginsample_app/util/printscreen.dart';

class ViewCourse extends StatefulWidget {
  @override
  _ViewCourseState createState() => _ViewCourseState();
}

class _ViewCourseState extends State<ViewCourse> {
  Color _textColor = Colors.grey;
  final text = "echo\n" * 1000;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: SingleChildScrollView(
            child: Column(children: [
          Stack(alignment: Alignment.bottomCenter, children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0x73000000),
                  const Color(0x00000000),
                  const Color(0x00000000),
                  const Color(0x73000000),
                ],
              )),
              child: Image.asset(
                'images/REC7.png',
                height: 204.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 700.w,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                "Professional Certificate in Customer Service Skills (Handling Difficult Customers)",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(25),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 20.h),
          ]),
          Column(
            children: <Widget>[
              SizedBox(height: 45.h),
            ],
          ),
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
            Expanded(
              child: Text(
                'Professional Certificate Courses in Business Management',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  fontSize: ScreenUtil().setSp(30),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                overflow: TextOverflow.clip,
                maxLines: 5,
              ),
            ),
            SizedBox(
              width: 75.h,
            )
          ]),
          Column(
            children: <Widget>[
              SizedBox(height: 30.h),
            ],
          ),
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
            Expanded(
              child: Text(
                'These are short online certificate courses designed to help you develop professionally and achieve your career goals, while you earn a professional certificate which qualifies you for the appropriate continuous professional development (CPD).',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  fontSize: ScreenUtil().setSp(23),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.clip,
                maxLines: 6,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 35.h,
            )
          ]),
          Column(
            children: <Widget>[
              SizedBox(height: 0),
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            width: 700.w,
            height: 40.h,
            child: Text(
              'Features',
              style: TextStyle(
                fontFamily: 'Circular STD',
                fontSize: ScreenUtil().setSp(30),
                color: Colors.black,
              ),
              overflow: TextOverflow.clip,
              maxLines: 3,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 30.h),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    Container(
                      height: 45.h,
                      width: 45.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/calendar1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Average Completion Time',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              '2 Weeks',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/support1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Effort',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              '3 Hours',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/jigsaws1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Levels',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'Advanced',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/clock.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Start Time',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'Anytime',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/wifi.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              '100% Online',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
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
                              'Study online with ease.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(16),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/fast1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Unlimited Access',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              '24/7 unlimited access with pre-recorded lectures.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/discount1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Low Fees',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'Our fees are low and easy to pay online.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
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
                          image: AssetImage('images/Group.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'UK CPD Certificate',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'Certificate to show what you have learnt.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 25.h),
                  ],
                ),
                Theme(
                  data: theme,
                  child: Column(
                    children: <Widget>[
                      ExpansionTile(
                        onExpansionChanged: (expanded) {
                          setState(() {
                            if (expanded) {
                              _textColor = Colors.grey;
                            } else {
                              _textColor = Colors.grey;
                            }
                          });
                        },
                        title: Text(
                          "Professional Certificate in Networking Hardware ",
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(28),
                            color: _textColor,
                          ),
                        ),
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                            Expanded(
                              child: Text(
                                'These are short online certificate courses designed to help you develop professionally and achieve your career goals, while you earn a professional certificate which qualifies you for the appropriate continuous professional development (CPD).',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(21),
                                  fontStyle: FontStyle.normal,
                                  color: _textColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            )
                          ]),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          "Accreditation ",
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(28),
                            color: _textColor,
                          ),
                        ),
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                            Expanded(
                              child: Text(
                                'Data',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(21),
                                  fontStyle: FontStyle.normal,
                                  color: _textColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            )
                          ]),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          "Certificate ",
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(28),
                            color: _textColor,
                          ),
                        ),
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                            Expanded(
                              child: Text(
                                'Data',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(21),
                                  fontStyle: FontStyle.normal,
                                  color: _textColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            )
                          ]),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          "Entry Requirements ",
                          style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: ScreenUtil().setSp(28),
                            color: _textColor,
                          ),
                        ),
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                            Expanded(
                              child: Text(
                                'Data',
                                style: TextStyle(
                                  fontFamily: 'Circular STD',
                                  fontSize: ScreenUtil().setSp(21),
                                  fontStyle: FontStyle.normal,
                                  color: _textColor,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 6,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            )
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 45.h),
                Container(
                  padding: EdgeInsets.fromLTRB(600000, 0, 0, 0),
                  height: 350.h,
                  width: 538.w,
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
                SizedBox(height: 45.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    Container(
                      height: 45.h,
                      width: 45.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/diploma.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Get Your Course Certificate',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'You will receive a highly valued digital certificate at the end of each course.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    Container(
                      height: 45.h,
                      width: 45.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/phone1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Learn Practical Business Modules',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'Complete several modules ranging from Business Leadership and Managing People.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                    Container(
                      height: 45.h,
                      width: 45.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/world1.png'),
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
                        width: 503.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'Meet Global Executives',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(20),
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
                              'Meet world class Business Executives globally as you study.',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(18),
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 1,
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 45.h),
                Container(
                  width: 700.w,
                  height: 90.h,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Text(
                    'See other related Professional Certificate Courses in Nigeria',
                    style: TextStyle(
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(30),
                      color: Colors.grey[900],
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 45.h),
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
                                      padding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 0)),
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
                                                  Color.fromRGBO(0, 0, 0, 1))),
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
                                              builder: (context) =>
                                                  ViewCourse()),
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
                                              color: Color.fromRGBO(
                                                  173, 0, 0, 1))),
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
                                      padding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 0)),
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
                                                  Color.fromRGBO(0, 0, 0, 1))),
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
                                              builder: (context) =>
                                                  ViewCourse()),
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
                                              color: Color.fromRGBO(
                                                  173, 0, 0, 1))),
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
                SizedBox(height: 20.h),
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
                SizedBox(height: 40.h),
                Container(
                  height: 300.h,
                  width: 1000.w,
                  color: Color.fromRGBO(41, 40, 40, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
                          SizedBox(width: 50.w),
                          SizedBox(
                            width: 120.h,
                            child: Column(
                              children: [
                                new Text(
                                  '91,250+',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(38),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                                new Text(
                                  'Learners',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(17),
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 340.w),
                          SizedBox(
                            width: 120.h,
                            child: Column(
                              children: [
                                new Text(
                                  '500+',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(38),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                                new Text(
                                  'Courses',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(17),
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 40.w),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
                          SizedBox(width: 50.w),
                          SizedBox(
                            width: 120.h,
                            child: Column(
                              children: [
                                new Text(
                                  '185+',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(38),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                                new Text(
                                  'Nationalities',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(17),
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 340.w),
                          SizedBox(
                            width: 120.h,
                            child: Column(
                              children: [
                                new Text(
                                  '28M',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(38),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                                new Text(
                                  'Online Sessions',
                                  style: TextStyle(
                                      fontFamily: 'Circular STD',
                                      fontSize: ScreenUtil().setSp(17),
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white),
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.clip,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 40.w),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ])),
        bottomNavigationBar: Container(
            color: Color.fromRGBO(173, 0, 0, 1),
            child: RaisedButton(
                color: Color.fromRGBO(173, 0, 0, 1),
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Checkout()),
                  );
                },
                child: Text(
                  "ENROL NOW",
                  style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(30),
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ))),
      ),
    );
  }
}

//Tile
class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Expansion Tile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            ExpansionTile(
              title: Text(
                "Title",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'Sub title',
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('data'),
                    )
                  ],
                ),
                ListTile(
                  title: Text('data'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
