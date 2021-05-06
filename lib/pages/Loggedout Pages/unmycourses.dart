import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/util/bottomnavigation.dart';
import 'package:loginsample_app/util/printscreen.dart';

class Pro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'My Courses',
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
                  SizedBox(height: 400.h),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
              new Text(
                'You do not have any enrolled courses',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(45),
                  fontWeight: FontWeight.w800,
                ),
                overflow: TextOverflow.clip,
                maxLines: 6,
                textAlign: TextAlign.center,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10.h),
                ],
              ),
              new Text(
                'Please click the log in button to get started',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(25),
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.clip,
                maxLines: 6,
                textAlign: TextAlign.center,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 30.h),
                ],
              ),
              Container(
                  height: 90.h,
                  width: 700.w,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    child: Text('LOG IN TO SEE COURSES',
                        style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabsPage()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
