import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginsample_app/pages/home.dart';
import 'package:loginsample_app/pages/notifications.dart';
import 'package:loginsample_app/pages/signin.dart';
import 'package:loginsample_app/util/printscreen.dart';

class Checkout extends StatefulWidget {
  final Home value;

  Checkout({Key key, this.value}) : super(key: key);
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => PaymentSummary(),
      );

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  void initState() {
    super.initState();
  }

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
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 15),
                ],
              ),
              new Text(
                'Checkout',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(35),
                  fontFamily: 'Circular STD',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 700.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Already have an account-Login',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(25),
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        print("Clicked");
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Signin()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.fill,
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
                      height: 74,
                      width: 273,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            // 'Programmename : ${widget.value.programmename}',
                            'Professional Certificate in Customer Service Skills (Handling Difficult Customers)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(30),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 8),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0)),
              Column(
                children: <Widget>[
                  SizedBox(height: 8),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: new TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "First Name",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "First Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "Last Name",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Last Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Phone Number cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.phone,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "Country",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Country cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "Gender",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Gender cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "Company/Employer",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Company/Employer";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText: "Position",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Position cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  decoration: new InputDecoration(
                    labelText:
                        "Full Name as it should appear on your Certificate",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Full Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.name,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontFamily: "Circular STD",
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 11),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "Enter Password",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                    fontFamily: "Circular STD",
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 12),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  cursorColor: Color.fromRGBO(252, 252, 252, 1),
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: " Confirm Password",
                    labelStyle: TextStyle(color: Colors.grey),
                    fillColor: Color.fromRGBO(252, 252, 252, 1),
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      borderSide: new BorderSide(),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.none,
                          color: Color.fromRGBO(252, 252, 252, 1)),
                    ),

                    //fillColor: Colors.green
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Password must be the same";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                    fontFamily: "Circular STD",
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10),
                ],
              ),
              Container(
                  height: 50,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromRGBO(173, 0, 0, 1),
                    onPressed: () {
                      print("Clicked");
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PaymentSummary()),
                      );
                    },
                    child: Text('CHECKOUT',
                        style: TextStyle(
                            fontFamily: 'Circular STD', fontSize: 16)),
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 45),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//PaymentSummary

class PaymentSummary extends StatefulWidget {
  final Home value;
  PaymentSummary({Key key, this.value}) : super(key: key);
  @override
  _PaymentSummaryState createState() => _PaymentSummaryState();
}

class _PaymentSummaryState extends State<PaymentSummary> {
  @override
  void initState() {
    super.initState();
  }

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
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(height: 17),
                ],
              ),
              new Text(
                'Payment Summary',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: ScreenUtil().setSp(40),
                  fontFamily: 'Circular STD',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/rec21.png'),
                        fit: BoxFit.fill,
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
                      height: 74,
                      width: 273,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            // 'Programmename : ${widget.value.programmename}',
                            'Professional Certificate in Customer Service Skills (Handling Difficult Customers)',
                            style: TextStyle(
                              fontFamily: 'Circular STD',
                              fontSize: ScreenUtil().setSp(30),
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          )),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 8),
                ],
              ),
              Container(
                width: ScreenUtil().setWidth(700),
                height: ScreenUtil().setHeight(28),
                child: new Text(
                  'Select Your Payment Option',
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 19.0,
                    fontFamily: 'Circular STD',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 19),
                ],
              ),
              Container(
                  width: 700.w,
                  height: 128.h,
                  color: Color.fromRGBO(229, 229, 229, 1),
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 550, 0)),
                      Expanded(
                          child: Text(
                        'You will be charged in GBP',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(20),
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      )),
                      Expanded(
                          child: Text(
                        'EUR 18 = GBP 16.04',
                        style: TextStyle(
                          fontFamily: 'Circular STD',
                          fontSize: ScreenUtil().setSp(27),
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ))
                    ],
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 20),
                ],
              ),
              Container(
                width: 700.w,
                height: 60.h,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/payment-logo-1.png'),
                    fit: BoxFit.contain,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 30),
                ],
              ),
              Container(
                  height: 44.96,
                  width: 18700,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.grey[900],
                    child: Text("Pay Now",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Circular STD',
                          fontWeight: FontWeight.w700,
                        )),
                    onPressed: () {},
                  )),
              Column(
                children: <Widget>[
                  SizedBox(height: 13),
                ],
              ),
              Container(
                width: 700.w,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'By Sigining up to our courses, you agree to our Terms and Conditions',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            color: Colors.blue,
                            fontFamily: 'Circular STD'),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
