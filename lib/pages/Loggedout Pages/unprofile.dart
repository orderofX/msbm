import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/createaccount.dart';
import 'package:loginsample_app/util/bottomnavigation.dart';

class Profile2 extends StatelessWidget {
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
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  new Text(
                    'Sign in to get started',
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
                      SizedBox(height: 40.h),
                    ],
                  ),
                  Container(
                    width: 700.w,
                    child: new Text(
                      'Sign in to access your enrolled courses and account information.',
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
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 40.h),
                    ],
                  ),
                  Container(
                    width: 700.w,
                    child: new Text(
                      'By creating an account, you agree to our Terms and Conditions and Privacy Policy.',
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
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 70.h),
                    ],
                  ),
                  Container(
                      height: 90.h,
                      width: 700.w,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromRGBO(173, 0, 0, 1),
                        child: Text('CREATE AN ACCOUNT',
                            style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: 16,
                                fontWeight: FontWeight.normal)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CAP()),
                          );
                        },
                      )),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 30.h),
                    ],
                  ),
                  Container(
                    height: 90.h,
                    width: 700.w,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabsPage()),
                        );
                      },
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                            fontFamily: 'Circular STD',
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      shape: Border.all(width: 2.0, color: Colors.black),
                      color: Colors.white,
                      textColor: Colors.black,
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
