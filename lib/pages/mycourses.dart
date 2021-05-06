import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/pages/home.dart';
import 'package:loginsample_app/util/printscreen.dart';
import 'package:loginsample_app/util/widgets.dart';

import 'notifications.dart';

class MyCourses extends StatefulWidget {
  final Home value;

  MyCourses({Key key, this.value}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Home(),
      );

  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  void initState() {
    super.initState();
  }

  double progress = 0;
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
          style: TextStyle(fontFamily: 'Circular STD', fontSize: 20),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
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
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //  FutureBuilder(
              //    future: FlutterSession().get('myData'),
              //     builder: (context, snapshot) {
              //    return Text(snapshot.hasData
              //        ? snapshot.data['id'].toString() +
              //        "|" +
              //       snapshot.data['data']
              //     : 'Loading...');
              //     }),
              Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                ],
              ),
              Row(children: [
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
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
