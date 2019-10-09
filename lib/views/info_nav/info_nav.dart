import 'package:flutter/material.dart';

class InfoNav extends StatefulWidget {
  @override
  _InfoNavState createState() => _InfoNavState();
}

class _InfoNavState extends State<InfoNav> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Info'),
      ),
      body: new Center(
        child: Icon(
          Icons.info,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
