import 'package:flutter/material.dart';

import 'TapboxA.dart';
import 'TapboxB.dart';
import 'TapboxC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Covid-19'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'สถานการณ์ Covid-19 วันนี้',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'วันที่ 17 มีนาคม 2564',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
         FavoriteWidget(),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'โควิด-19 ส่งผลต่อผู้คนในรูปแบบที่แตกต่างกันไป ผู้ที่ติดเชื้อส่วนใหญ่จะมีอาการเล็กน้อยถึงปานกลาง และหายจากโรคได้เองโดยไม่ต้องเข้ารักษาในโรงพยาบาล',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TapboxA()),
                );
              },
              child:_buildButtonColumn(color, Icons.airline_seat_individual_suite_sharp, 'อาการ')),
              GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ParentWidgetB()),
                );
              },
              child:_buildButtonColumn(color, Icons.admin_panel_settings_sharp, 'ป้องกัน')),
              GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  // ignore: missing_required_param
                  MaterialPageRoute(builder: (context) => ParentWidgetC()),
                );
              },
              child:_buildButtonColumn(color, Icons.clean_hands_sharp, 'รักษา')),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          children: <Widget>[
            Image.asset(            
              'images/19C.jpg',            
              width: 600,            
              height: 240,            
              fit: BoxFit.cover,            
            ),
            titleSection,buttonSection,textSection
          ],
        ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {
      _favoriteCount -= 1;
      _isFavorited = false;
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
}

 Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}