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
      home: const MyHomePage(title: '명언 생성기'),
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
  var text = "버튼을 눌러 명언을 생성하세요";
  var person = "";
  var texts = [
    "삶이 있는 한 희망은 있다",
    "피할 수 없으면 즐겨라",
    "오랫동안 꿈을 그리는 사람은 마침내 그 꿈을 닮아 간다",
    "1퍼센트의 가능성, 그것이 나의 길이다",
    "사막이 아름다운 것은 어딘가에 샘이 숨겨져 있기 때문이다",
    "결점을 찾지 말고 해결책을 찾으라",
    "꿈을 계속 간직하고 있으면 반드시 실현할 때가 온다",
    "인생에 뜻을 세우는데 있어 늦은 때라고는 없다",
    "인생은 가까이서 보면 비극, 멀리서 보면 희극이다",
    "최고에 도달하려면 최저에서 시작해라",
    "아무것도 하지 않으면 아무 일도 일어나지 않는다",
    "겨울이 오면 봄이 멀지 않으리",
    "오늘 할 수 있는 일을 내일로 미루지 마라",
    "위험은 자신이 무엇을 하는지 모르는 데에서 온다",
    "모든 사람들로부터 사랑받지 않아도 된다",
    "너의 운명의 별은 너의 마음속에 있다",
    "꿈을 꾸기에 인생은 빛난다",
    "꿈을 꿀 수 있다면, 그 꿈을 실현할 수 있다",
    "한 번의 실패와 영원한 실패를 혼동하지 마라",
    "희망은 사람을 성공으로 인도하는 신앙이다",
    "불가능하다고 믿는 것은 곧 그것을 불가능하게 하는 일이다",
    "꾸물대고 있는 것은 시간을 도둑맞는 일이다",
    "가시에 찔리지 않고서는 장미꽃을 모을 수가 없다",
    "강을 거슬러 헤엄치는 자가 강물의 세기를 안다",
    "영원히 살 것처럼 꿈꾸고 오늘 죽을 것처럼 살아라",
    "서두르지 말되 멈추지 말라",
    "삶의 의미는 발견하는 것이 아니라 만들어가는 것이다",
    "당신은 움츠리기보다 활짝 피어나도록 만들어진 존재이다",
    "낭비한 시간에 대한 후회는 더 큰 시간 낭비이다",
    "행복은 소유에 있지 않고 존재에 있다",
    "행복의 한쪽 문이 닫히면 다른쪽 문이 열린다",
    "중요한 것보다 소중한 것을 먼저 하라",
    "해가 뜨지 않는 날은 결코 없다",
    "인간이 가장 조심해야 할 것은 자기 안에 있는 두려움이다",
    "인간은 자신이 얼마나 마음먹느냐에 따라 행복해진다",
    "생명이 지속되는 한 희망이 있다",
    "삶에 대한 절망 없이는 삶에 대한 희망도 없다",
    "그대의 하루하루를 그대의 마지막 날이라고 생각하라"];

  var people = ["-키케로", "-로버트 엘리엇", "-앙드레 말로", "-나폴레옹", "-생텍쥐페리",
    "-헨리 포드", "-괴테", "-제임스 볼드윈", "-찰리 채플린", "-P.시루스", "-기시미 이치로",
    "-셸리", "-벤자민 프랭클린", "-워렌 버핏", "-니체", "-F.쉴러", "-모차르트",
    "-월트 디즈니", "-F.스콧 핏제랄드", "헬렌 켈러", "-풀러", "-영", "-필페이",
    "-우드로 윌슨", "-제임스틴", "-괴테", "생텍쥐페리", "-오프라 윈프리", "-메이슨 쿨리",
    "-에리히 프롬", "-헬렌 켈러", "-스티븐 코비", "-셀이아 박스터", "-토마스 칼라일",
    "-아브라함 링컨", "세르반테스", "-카뮈", "-호라티우스"];

  void changeText() {
    setState(() {
      var randomNum = Random().nextInt(texts.length);
      text = texts[randomNum];
      person = people[randomNum];
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
              Text(person, style: TextStyle(fontSize: 19, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
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
