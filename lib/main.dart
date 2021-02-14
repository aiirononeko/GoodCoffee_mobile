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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) {
                              return UsersPage();
                            }
                        )
                       );
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 50,
                  child: RaisedButton(
                    child: const Text('電話番号で登録する'),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) {
                                return UsersPage();
                              }
                          )
                      );
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 50,
                  child: RaisedButton(
                    child: const Text('メールアドレスで登録する'),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) {
                                return UsersPage();
                              }
                          )
                      );
                    },
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

  final List<MapEntry<String, int>> cuppedCoffee = [
    MapEntry('ケニア 二エリ', 5),
    MapEntry('エチオピア イルガチェフ', 4),
    MapEntry('ブラジル へクレイオ', 3),
    MapEntry('コスタリカ ドンマヨ', 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good Coffee'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: cuppedCoffee.length,
            itemBuilder: (context, i) {
              return _cuppedItem(cuppedCoffee[i].key, cuppedCoffee[i].value);
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) {
                return CuppingPage();
              }
          )
        ),
        child: Icon(Icons.add)
      ),
    );
  }

  Widget _cuppedItem(String name, int score) {
    return Container(
      decoration: new BoxDecoration(
          border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
      ),
      child:ListTile(
        title: Text(
          name,
          style: TextStyle(
              color:Colors.black,
              fontSize: 18.0
          ),
        ),
        leading: Text(
          score.toString()
        ),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) {
                    return CoffeePage();
                  }
              )
          );
        }
      ),
    );
  }
}

class CoffeePage extends StatefulWidget {
  @override
  _CoffeePage createState() => _CoffeePage();
}

class _CoffeePage extends State<CoffeePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Good Coffee'),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('ケニア 二エリ')
              ),
              Container(
                child: Text('5←数字に応じて星を表示'),
              ),
              Container(
                child: Text('ここにフレーバーがリスト表示')
              ),
              Container(
                child: Text('ここにメモ書き表示')
              )
            ]
          )
        )
    );
  }
}

class CuppingPage extends StatefulWidget {
  @override
  _CuppingPage createState() => _CuppingPage();
}

class _CuppingPage extends State<CuppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good Coffee'),
        backgroundColor: Colors.grey
      ),
      body: Center(
        child: Text('カッピングするページです')
      )
    );
  }
}
