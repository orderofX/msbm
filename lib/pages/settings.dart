import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';

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
