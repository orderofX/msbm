import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginsample_app/pages/signin.dart';
import 'package:loginsample_app/util/bottomnavigation.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<LandingPage> {
  int _currentIndex = 0;

  List cardList = [
    Item1(),
    Item2(),
    Item3(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return MaterialApp(
      title: 'Welcome to MSBM',
      home: Container(
        height: 1000.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: new Stack(alignment: Alignment.topCenter, children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 0)),
              SizedBox(
                height: 180.h,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 0.5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                        "images/rec13.png",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
              //   Container(
              //    height: MediaQuery.of(context).size.width * 3.0,
              //   width: MediaQuery.of(context).size.width * 3.0,
              //  decoration: BoxDecoration(
              //     boxShadow: [
              //       new BoxShadow(
              //         color: Colors.black12,
              //       blurRadius: 2.0,
              //        spreadRadius: 70.0, //extend the shadow
              //    offset: Offset(
              //         60.0, // Move to right 10  horizontally
              //      30.0, // Move to bottom 10 Vertically
              //        ),
              //      ),
              //      ],
              //      gradient: LinearGradient(
              //        begin: Alignment.bottomLeft,
              //      end: Alignment.bottomRight,
              //        colors: [
              //       const Color(0xCC000000),
              //       const Color(0x00000000),
              //    const Color(0x00000000),
              //    const Color(0xCC000000),
              //     ],
              //       ),
              //    ),
              //    ),
              Container(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 100),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Card(
                            elevation: 0,
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(cardList, (index, url) {
                      return Container(
                        width: 30.0,
                        height: 2.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: _currentIndex == index
                              ? Color.fromRGBO(173, 0, 0, 1)
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ]),
              ),

              SizedBox(
                height: 25.h,
              ),

              new Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 15, right: 15)),
                  new FlatButton(
                      child: new Text(
                        'Browse',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(36),
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        print('Clicked');
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new TabsPage()),
                        );
                      }),
                  SizedBox(width: 200.w),
                  new FlatButton(
                      child: new Text(
                        'Sign In',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(36),
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        print("Clicked");
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Signin()),
                        );
                      }),
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

//Carousel Items
class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 30,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: SizedBox(
        width: 700.w,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Trying to join MSBM?',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(35),
                  fontFamily: 'Circular STD',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                "You can't sign up for MSBM now on the app.We know it might be stressful.The app is only for exisiting members with already signed up courses",
                style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    color: Colors.black),
                maxLines: 8,
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 10,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: SizedBox(
        width: 700.w,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Learn at your pace',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(35),
                  fontFamily: 'Circular STD',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                "Self study online courses available 24/7 so you can learn at your pace.",
                style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    color: Colors.black),
                maxLines: 6,
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 30,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: SizedBox(
        width: 700.w,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Accredited Courses',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(35),
                  fontFamily: 'Circular STD',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                "Gain direct admission into University top-up degree with our OFQUAL certificates.",
                style: TextStyle(
                    fontFamily: 'Circular STD',
                    fontSize: ScreenUtil().setSp(22),
                    color: Colors.black),
                maxLines: 6,
                textAlign: TextAlign.center,
              ),
            ]),
      ),
    );
  }
}
