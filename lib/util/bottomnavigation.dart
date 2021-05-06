//BottomNavigationBar
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/pages/explorepage.dart';
import 'package:loginsample_app/pages/home.dart';
import 'package:loginsample_app/pages/mycourses.dart';
import 'package:loginsample_app/pages/savedcourses.dart';
import 'package:loginsample_app/pages/profilepage.dart';
import 'package:loginsample_app/util/printscreen.dart';

class BottomNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  BottomNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<BottomNavigationItem> get items => [
        BottomNavigationItem(
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
        BottomNavigationItem(
            page: ExplorePage(),
            icon: Icon(Icons.explore),
            title: Text(
              "Explore",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem(
            page: MyCourses(),
            icon: Icon(Icons.folder),
            title: Text(
              "My Courses",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem(
            page: SavedCourses(),
            icon: Icon(Icons.favorite),
            title: Text(
              "Saved Courses",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            )),
        BottomNavigationItem(
            page: Profile(),
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

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
          for (final tabItem in BottomNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(173, 0, 0, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          for (final tabItem in BottomNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              title: tabItem.title,
            )
        ],
      ),
    );
  }
}
