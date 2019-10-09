import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Center(
        child: Icon(
          Icons.home,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
