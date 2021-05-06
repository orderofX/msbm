import 'package:flutter_screenutil/flutter_screenutil.dart';

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
