### Flutter开发笔记

[Flutter中文网](https://flutterchina.club/docs/)

#### 字体与颜色  
[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html) 可以用来自定义颜色，ARGB格式有8位，如果只写了RGB的6位，则默认透明度为0，此外可以通过 [Colors](https://api.flutter.dev/flutter/material/Colors-class.html) 来使用Material规范中的颜色。
```dart
Color c = const Color(0xFF42A5F5);
Color c = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
Color c = const Color.fromARGB(255, 66, 165, 245);
Color c = const Color.fromRGBO(66, 165, 245, 1.0);
Color c = Colors.green[400];
```
通过 [Icons](https://api.flutter.dev/flutter/material/Icons-class.html) 可以使用Material提供的字体库（ [Material icons 全图标一览](https://blog.csdn.net/boywcx/article/details/85051967) ）。


#### 底部导航栏
[BottomNavigationBar](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html)与[BottomNavigationBarItem](https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html)搭配使用来组建底部导航栏。

#### 关于滚动
当组件内容超过当前显示视口(ViewPort)时，如果没有特殊处理，Flutter则会提示Overflow错误。  
[常用滚动组件](https://book.flutterchina.club/chapter6/)  
+ Scrollbar && SingleChildScrollView
+ ListView
+ GridView
+ CustomScrollView

对于可滚动组件，可以用ScrollController来控制可滚动组件的滚动位置。

