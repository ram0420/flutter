import 'package:flutter/material.dart';
import 'package:login_ex1/screen/home_screen.dart';
import 'package:login_ex1/widget/bottom_bar.dart';

// 홈페이지 사용하지 않는 방식 선호?? -> StatefulWidget
class Home extends StatefulWidget{
  _HomeState createState() => _HomeState(); // My App의 상태를 관리
}

class _HomeState extends State<Home> {
  late TabController controller; //TabController 선언 , 이것도 late 붙여야 하나봄
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BbongFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        hintColor: Colors.white, //강의에서는 accentColor 였는데 바뀌었나봄
      ),
      // NeverScrollableScrollPhysics : 스와이프로 탭 전환 막음
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            //physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(child: Center(child: Text('search'),),),
              Container(child: Center(child: Text('save'),),),
              Container(child: Center(child: Text('list'),),),
              //Container4개 만들기!!
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}