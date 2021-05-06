import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:loginsample_app/main.dart';

import 'home.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Tab> tabs = [
    Tab(
      ///Give  keys so you can make it easier to retrieve content to display, if you have to read the data from a remote resource ..
      key: ObjectKey(1),
      text: 'Lectures',
    ),
    Tab(
      key: ObjectKey(2),
      text: 'Statistics',
    ),
    Tab(
      key: ObjectKey(3),
      text: 'Resources',
    ),
  ];

  // ignore: missing_return
  Widget _setDisplayContainer(key) {
    if (key == ObjectKey(1)) {
      return FirstWidget();
    } else if (key == ObjectKey(2)) {
      return SecondWidget();
    } else if (key == ObjectKey(3)) {
      return ThirdWidget();
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * .35),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(children: <Widget>[
                    Container(
                      height: 105.h,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 20),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          //Container(
                          //  padding: EdgeInsets.only(left: 15),
                          //  child: Row(
                          //   children: <Widget>[
                          //    Icon(Icons.notifications,
                          //      color: Colors.white, size: 20),
                          //   ],
                          //   )),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 35.h),
                new Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                      height: 180.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/rec21.png'),
                          fit: BoxFit.contain,
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
                        height: 170.h,
                        width: 450.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              'MBA  Degree Pathway - Level 7 Diploma in Strategic Management & Leadership',
                              style: TextStyle(
                                fontFamily: 'Circular STD',
                                fontSize: ScreenUtil().setSp(26),
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                            )),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                                height: 65.h,
                                width: 330.w,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.black,
                                  onPressed: () {
                                    print("Clicked");
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => new MyA()),
                                    );
                                  },
                                  child: Text('Start Course',
                                      style: TextStyle(
                                        fontFamily: 'Circular STD',
                                        fontSize: ScreenUtil().setSp(24),
                                      )),
                                )),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 35.h),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  width: 800.h,
                  child: TabBar(
                    labelPadding: EdgeInsets.all(0.5),
                    unselectedLabelColor: const Color(0xffacb3bf),
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3.0,
                    indicatorPadding: EdgeInsets.all(4),
                    tabs: tabs,
                    controller: _tabController,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Circular STD',
                      fontSize: ScreenUtil().setSp(24),
                    ),
                    onTap: (index) {},
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children:
                tabs.map((tab) => _setDisplayContainer(tab.key)).toList()));
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

class FirstWidget extends StatefulWidget {
  @override
  FirstWidgetApp createState() => new FirstWidgetApp();
}

class FirstWidgetApp extends State<FirstWidget> {
  int counter = 1;
  bool cboxValue = true;
  @override
  Widget build(BuildContext ctxt) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return new ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
        Row(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
          Expanded(
              flex: 2,
              child: Text(
                'Workplace Management Skills ',
                style: TextStyle(
                  fontFamily: 'Circular STD',
                  fontSize: ScreenUtil().setSp(25),
                  color: Colors.black,
                ),
                overflow: TextOverflow.clip,
                maxLines: 3,
              )),
          new CircularCheckBox(
              value: cboxValue,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              checkColor: Color.fromRGBO(173, 0, 0, 1),
              activeColor: Color.fromRGBO(173, 0, 0, 1),
              disabledColor: Color.fromRGBO(173, 0, 0, 1),
              autofocus: true,
              onChanged: (val) => this.setState(() {
                    cboxValue = !this.cboxValue;
                  })),
          SizedBox(width: 20.w),
        ]),
        Column(
          children: <Widget>[
            SizedBox(height: 5.h),
          ],
        ),
        Divider(
          color: Colors.black,
        ),
        Column(children: <Widget>[
          SizedBox(height: 5.h),
        ]),
      ],
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

class PA extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
            appBar: new AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              backgroundColor: Colors.black,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
              bottom: new TabBar(
                tabs: <Widget>[
                  new Tab(text: "Lectures"), // 1st Tab
                  new Tab(text: "More"), // 2nd Tab
                ],
              ),
            ),
            body: new TabBarView(
                children: <Widget>[new FirstWidget(), new SecondWidget()])),
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _CircularProgressIndicatorApp(),
    );
  }
}

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
                              percent: 0,
                              center: new Text(
                                "0%",
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
                              percent: 1,
                              center: new Text(
                                "100%",
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
                          percent: 0,
                          center: new Text(
                            "0%",
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

//webbrowser
class MyA extends StatefulWidget {
  @override
  _MyAState createState() => new _MyAState();
}

class _MyAState extends State<MyA> {
  InAppWebViewController _webViewController;
  String url = "";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return MaterialApp(
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
          title: const Text(''),
          backgroundColor: Colors.black,
        ),
        body: Container(
            child: Column(children: <Widget>[
          //   FutureBuilder(
          //       future: FlutterSession().get('myData'),
          //     builder: (context, snapshot) {
          //         return Text(snapshot.hasData
          //          ? snapshot.data['id'].toString() +
          //               "|" +
          //               snapshot.data['data']
          //          : 'Loading...');
          //      }),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Management control and accountability for financial resources",
              style: TextStyle(
                  fontFamily: 'Circular STD',
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.black),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
              padding: EdgeInsets.all(3.0),
              child: progress < 1.0
                  ? LinearProgressIndicator(value: progress)
                  : Container()),
          Expanded(
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent)),
              child: InAppWebView(
                initialUrl:
                    "https://msbm.org.uk/portal/uploads/module_scorm/5ddbafdd79262/index.html",
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                  debuggingEnabled: true,
                )),
                onWebViewCreated: (InAppWebViewController controller) {
                  _webViewController = controller;
                },
                onLoadStart: (InAppWebViewController controller, String url) {
                  setState(() {
                    this.url = url;
                  });
                },
                onLoadStop:
                    (InAppWebViewController controller, String url) async {
                  setState(() {
                    this.url = url;
                  });
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                  color: Color.fromRGBO(232, 232, 232, 1),
                  onPressed: () {
                    if (_webViewController != null) {
                      _webViewController.reload();
                    }
                  },
                  icon: Icon(Icons.arrow_downward),
                  label: Text(
                    'Download Slide',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(30),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  )),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20.h,
              )
            ],
          )
        ])),
      ),
    );
  }
}

class ThirdWidget extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Home(),
      );
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      body: IndexedStack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 25.h),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 1',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 2',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 3',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 4',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 5',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Quiz',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 520.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new StartQuiz()),
                      );
                    },
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 7',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                  new Icon(
                    Icons.insert_drive_file,
                    color: Color.fromRGBO(173, 0, 0, 1),
                  ),
                  new Text(
                    'Lecture Material 8',
                    style: TextStyle(
                        fontFamily: 'Circular STD',
                        fontSize: ScreenUtil().setSp(21),
                        fontStyle: FontStyle.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 415.w,
                  ),
                  new IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    iconSize: ScreenUtil().setSp(30),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: () {},
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 35.h),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
