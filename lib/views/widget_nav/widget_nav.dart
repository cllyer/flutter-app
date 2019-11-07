import 'package:flutter/material.dart';

class WidgetNav extends StatefulWidget {
  @override
  _WidgetNavState createState() => _WidgetNavState();
}
class _WidgetNavState extends State<WidgetNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('Text '*10,
                textAlign: TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.grey, height: 1.5),
              ),
              ButtonGroup(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('static/images/avatar.png'), width: 80.0),
                  Image.asset('static/images/avatar.png', width: 80.0),
                  Image(image: NetworkImage('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4'), width: 80.0),
                  Image.network('https://avatars2.githubusercontent.com/u/20411648?s=460&v=4', width: 80.0)
                ]
              ),
              Icon(Icons.extension, size: 50.0, color: Colors.blue),
              FormGroup()
            ],
          ),
        )
      ),
    );
  }
}

// 按钮展示项
class ButtonGroup extends StatefulWidget {
  @override
  _ButtonGroupState createState() => _ButtonGroupState();
}
class _ButtonGroupState extends State<ButtonGroup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Text('RaisedButton'),
          onPressed: () {},
        ),
        RaisedButton.icon(
          icon: Icon(Icons.send),
          label: Text('发送'),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('FlatButton'),
          onPressed: () {},
        ),
        FlatButton.icon(
          icon: Icon(Icons.info),
          label: Text('详情'),
          onPressed: () {},
        ),
        OutlineButton(
          child: Text('OutlineButton'),
          onPressed: () {},
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('添加'),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(IconData(0xe7a0, fontFamily: "IconFont")),
          onPressed: () {},
        ),
      ],
    );
  }
}

// class FormGroup extends StatefulWidget {
//   @override
// }

class FormGroup extends StatefulWidget {
  @override
  _FormGroupState createState() => _FormGroupState();
}
class _FormGroupState extends State<FormGroup> {
  bool _switchSelected = true; // 维护单选开关状态
  bool _checkboxSelected = true; // 维护复选框状态
  TextEditingController _unameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.red,
          onChanged: (value) {
            setState(() {
              _checkboxSelected = value;
            });
          },
        ),
        TextField(
          autofocus: true,
          controller: _unameController,
          decoration: InputDecoration(
            // labelText: '用户名',
            hintText: '用户名或邮箱',
            prefixIcon: Icon(Icons.person)
          ),
          onChanged: (value) {
            print(value);
            print(_unameController.text);
          },
        ),
        TextField(
          decoration: InputDecoration(
              // labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)
          ),
          obscureText: true,
        ),
      ]
    );
  }
}
