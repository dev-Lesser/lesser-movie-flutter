import 'package:flutter/material.dart';
import 'package:flutter_company_name/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // 위젯 추가 동적 스테이트 관리
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'lesser-movie',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          secondaryHeaderColor: Colors.white,
        ),
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                body: TabBarView(
                  physics: NeverScrollableScrollPhysics(), // 스크롤 기능 막기,
                  children: <Widget>[
                    Container(
                        child: Center(
                      child: Text('home'),
                    )),
                    Container(
                        child: Center(
                      child: Text('search'),
                    )),
                    Container(
                        child: Center(
                      child: Text('save'),
                    )),
                    Container(
                        child: Center(
                      child: Text('more'),
                    )),
                  ],
                ),
                bottomNavigationBar: Bottom())));
  }
}
