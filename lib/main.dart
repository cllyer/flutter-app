import 'package:flutter/material.dart';
import 'views/home_nav/home_nav.dart';
import 'views/widget_nav/widget_nav.dart';
import 'views/info_nav/info_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List _tabData = [
    {'text': 'Home', 'icon': Icon(Icons.home)},
    {'text': 'Widget', 'icon': Icon(Icons.extension)},
    {'text': 'Info', 'icon': Icon(Icons.info)},
  ];
  List<BottomNavigationBarItem> _tabList = []; // 底部导航子项列表
  List<Widget> _pages = []; // 导航对应的页面组件
  int _selectedIndex = 0; // 选中的导航子项

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
      ..add(WidgetNav())
      ..add(InfoNav());
    for (int i = 0; i < _tabData.length; i++) {
      _tabList.add(BottomNavigationBarItem(
        icon: _tabData[i]['icon'],
        title: Text(_tabData[i]['text']),
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
