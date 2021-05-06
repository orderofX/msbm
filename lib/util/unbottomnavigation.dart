import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/main.dart';
import 'package:loginsample_app/pages/Loggedout%20Pages/unmycourses.dart';
import 'package:loginsample_app/pages/Loggedout%20Pages/unprofile.dart';
import 'package:loginsample_app/pages/Loggedout%20Pages/unsavedcoursed.dart';
import 'package:loginsample_app/pages/explorepage.dart';
import 'package:loginsample_app/pages/home.dart';

class BottomNavigationItem2 {
  final Widget page;
  final Widget title;
  final Icon icon;

  BottomNavigationItem2({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<BottomNavigationItem2> get items => [
        BottomNavigationItem2(
            page: Home(),
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem2(
            page: ExplorePage(),
            icon: Icon(Icons.explore),
            title: Text(
              "Explore",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem2(
            page: Pro(),
            icon: Icon(Icons.folder),
            title: Text(
              "My Courses",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem2(
            page: Prof(),
            icon: Icon(Icons.favorite),
            title: Text(
              "Saved Courses",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem2(
            page: Profile2(),
            icon: Icon(Icons.account_circle),
            title: Text(
              "Profile",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
      ];
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(
      primaryColor: Color.fromRGBO(173, 0, 0, 1),
    );
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);

    printScreenInformation();
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in BottomNavigationItem2.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(173, 0, 0, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          for (final tabItem in BottomNavigationItem2.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              title: tabItem.title,
            )
        ],
      ),
    );
  }
}
