import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

/* 레이아웃 공부 
class Myapp extends StatelessWidget { //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
<<<<<<< HEAD
            // 앱 화면의 배젤들을 침범하지 않는 화면 영역
            /*
          child: Container( // 
            //컨테이너 위치 및 간단한 속성보기
            height: 100.0,  // 높이
            width: 100.0,   // 너비
            //외부 여백은 margin으로 정의
            //margin: EdgeInsets.all(20.0),  //EdgeInsets.all 은 모든 모서리에 대한 여백
            //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),  // symmetric은 가로 마진과 세로 마진을 정의한다
            //margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),  //LTRB는 왼, 위, 오, 아래에 대해 마진을 각각 지정할 수 있다. 
            margin: EdgeInsets.only(left: 30.0),  //only는 오직 한 방향으로만 설정 한다
            padding: EdgeInsets.all(20.0),  // 패딩은 컨테이너 내부 요소가 컨테이너 벽과 멀어지는 거리를 지정하며 속성은 마진과 똑같다
            color: Colors.white,
            child: Text('Hello'),
=======
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget> [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
            ],
>>>>>>> dc04c36801ec749571d983bbdb80593e9cc1ec1f
          ),
          */
            child: Column(// Column은 행으로 Row는 열로 배치한다
          //mainAxisSize: MainAxisSize.min,//컬럼의 열 길이를 필요한 만큼으로만 제한시킴
          //verticalDirection: VerticalDirection.down, //내부 자식들의 정렬 순서 변경
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch, // cross는 가로로 배치하는 것
          // Column은 컨테이너를 열로 나열하는 것으로 단일 자식이 아닌 children으로 여러 자식을 가질 수 있다
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            SizedBox(  // 공백 공간 넣을 때 사용
              height: 20.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: Text("Container 2"),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text("Container 3"),
            ),
          ],
        )),
      ),
    );
  }
}
*/

class Myapp extends StatelessWidget {
  //명함 제작
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  // 일반적으로 프로필 이미지에 사용됨
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                Text(
                  'Kim BoSoek',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '010-8603-7720',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'boseoggim08@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
