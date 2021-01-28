import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';

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

Widget ideaDetailCard() {
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
                    'Professional Certificate in Planning and Implementing E-Commerce Strategy',
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
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
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
