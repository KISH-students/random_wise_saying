import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '어플 제목',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var text = "사과";
  var texts = [
    "삶이 있는 한 희망은 있다 -키케로",
    "피할 수 없으면 즐겨라 -로버트 엘리엇",
    "오랫동안 꿈을 그리는 사람은 마침내 그 꿈을 닮아 간다 -앙드레 말로",
    "1퍼센트의 가능성, 그것이 나의 길이다 -나폴레옹",
    "사막이 아름다운 것은 어딘가에 샘이 숨겨져 있기 때문이다 -생텍쥐페리",
    "결점을 찾지 말고 해결책을 찾으라 -헨리 포드",
    "꿈을 계속 간직하고 있으면 반드시 실현할 때가 온다 -괴테"];

  void changeText() {
    setState(() {
      var randomNum = Random().nextInt(texts.length);
      text = texts[randomNum];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text, style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
              MaterialButton(onPressed: () {
                changeText();
              },
                  color: Colors.deepPurpleAccent,
              child: Text("명언 생성", style: TextStyle(color: Colors.white)))
            ]
        ),
      ),
    );
  }
}
