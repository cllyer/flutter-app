import 'package:flutter/material.dart';

class WidgetNav extends StatefulWidget {
  @override
  _WidgetNavState createState() => _WidgetNavState();
}

class _WidgetNavState extends State<WidgetNav> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Widget'),
      ),
      body: new Center(
        child: Icon(
          Icons.extension,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
