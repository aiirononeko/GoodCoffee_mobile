import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good Coffee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RegistrationPage(title: 'Good Coffee'),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegistrationPage createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 180.0,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 200.0,
                  height: 50,
                  child: RaisedButton(
                    child: const Text('apple IDで登録する'),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 50,
                  child: RaisedButton(
                    child: const Text('電話番号で登録する'),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 50,
                  child: RaisedButton(
                    child: const Text('メールアドレスで登録する'),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],
              )
            ),
          ],
        ),
      )
    );
  }
}

class UsersPage extends StatefulWidget {
  @override
  _UsersPage createState() => _UsersPage();
}

class _UsersPage extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good Coffee'),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
