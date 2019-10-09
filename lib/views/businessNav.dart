import 'package:flutter/material.dart';

class BusinessNav extends StatefulWidget {
  @override
  _BusinessNavState createState() => _BusinessNavState();
}

class _BusinessNavState extends State<BusinessNav> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Business'),
      ),
      body: new Center(
        child: Icon(
          Icons.business,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
