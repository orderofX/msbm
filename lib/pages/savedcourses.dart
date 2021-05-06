import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';

import 'package:loginsample_app/pages/home.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:loginsample_app/util/widgets.dart';

import 'package:loginsample_app/pages/coursepage.dart';

import 'notifications.dart';

class SavedCourses extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => Home(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        title: Text(
          ' Saved Courses',
          style: TextStyle(
            fontFamily: 'Circular STD',
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(35),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
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
              //   FutureBuilder(
              //       future: FlutterSession().get('myData'),
              //       builder: (context, snapshot) {
              //        return Text(snapshot.hasData
              //          ? snapshot.data['id'].toString() +
              //            "|" +
              //            snapshot.data['data']
              //         : 'Loading...');
              //    }),
              Padding(padding: EdgeInsets.only(top: 15)),
              //cards for slider
              Row(children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                startcourse(
                  'MSBM',
                  'Professional certificate in Customer Service Skills',
                  'Eur 29',
                  'Online',
                  '2 Weeks',
                  '3 Hours Per Week',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPage()),
                    );
                  },
                ),
                // second Card
                startcourse(
                  'MSBM',
                  'Professional Certificate in Planning and Implementing E-Commerce Strategy',
                  'Eur 29',
                  'Online',
                  '2 Weeks',
                  '3 Hours Per Week',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPage()),
                    );
                  },
                ),
              ]),

              Column(
                children: <Widget>[
                  SizedBox(height: 140),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
