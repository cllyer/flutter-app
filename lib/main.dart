import 'package:flutter/material.dart';
import 'views/homeNav.dart';
import 'views/businessNav.dart';
import 'views/schoolNav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List _tabData = [
    {'text': 'Home', 'icon': Icon(Icons.home)},
    {'text': 'Business', 'icon': Icon(Icons.business)},
    {'text': 'School', 'icon': Icon(Icons.school)},
  ];
  List<BottomNavigationBarItem> _tabList = [];
  List<Widget> _widgetOptions = [];
  List<Widget> _pages = []; // 导航对应的页面组件
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pages
      ..add(HomeNav())
      ..add(BusinessNav())
      ..add(SchoolNav());
    for (int i = 0; i < _tabData.length; i++) {
      _tabList.add(BottomNavigationBarItem(
        icon: _tabData[i]['icon'],
        title: Text(_tabData[i]['text']),
      ));
      _widgetOptions.add(Text(
        'Index ${i+1}: ${_tabData[i]['text']}',
        style: optionStyle,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _tabList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
