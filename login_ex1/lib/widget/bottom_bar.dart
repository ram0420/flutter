import 'package:flutter/material.dart';

//상태 관리 필요 없으므로 StatelessWidget으로 만든다.
class Bottom extends StatelessWidget{
  //override로 build 함수 가져오기
  //Container 안에 만들고 싶은 BottomNavigation Bar 만들면 됨
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.transparent,
          tabs:<Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text('홈', style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 18,
              ),
              child: Text('단어장', style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.save_alt,
                size: 18,
              ),
              child: Text('리포트', style: TextStyle(fontSize: 9),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.list,
                size: 18,
              ),
              child: Text('설정', style: TextStyle(fontSize: 9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}