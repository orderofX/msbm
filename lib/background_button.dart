import 'package:flutter/material.dart';

class BackgroundButton extends StatefulWidget {
  @override
  BackgroundButtonState createState() => BackgroundButtonState();
}

class BackgroundButtonState extends State<BackgroundButton> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  child: new Text(
                    'Click Me',
                  ),
                  onPressed: () {
                    print('Clicked');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
