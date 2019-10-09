import 'package:flutter/material.dart';

class SchoolNav extends StatefulWidget {
  @override
  _SchoolNavState createState() => _SchoolNavState();
}

class _SchoolNavState extends State<SchoolNav> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('School'),
      ),
      body: new Center(
        child: Icon(
          Icons.school,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
