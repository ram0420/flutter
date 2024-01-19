import 'package:flutter/material.dart';

// 영화 데이터를 백엔드에서 가져와야 하므로 StatefulWidget으로
class HomeScreen extends StatefulWidget {
  //HomeScreen에 대한 상태 관리!
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //override로 initState() 가져오기
  @override
  void initState() {
    super.initState();
  }

  //override로 Widget build() 가져오기
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBar(),
        // 여기에 다른 화면 컨텐츠를 추가할 수 있습니다.
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        // 간격 맞춰주기
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/dasori_circle.png',
            fit: BoxFit.contain,
            height: 50,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  '2024.01.15',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}