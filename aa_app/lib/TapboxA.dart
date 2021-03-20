import 'package:flutter/material.dart';// TapboxA manages its own state.

//------------------------- TapboxA ----------------------------------

class TapboxA extends StatefulWidget {
  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA > {
  @override
  

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
                  'อาการ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text("Covid-19"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(children: <Widget>[
                Image.asset(            
              'images/okn.jpg',            
              width: 600,            
              height: 320,            
              fit: BoxFit.cover,            
            ),
            titleSection
            ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 30, right: 30),
              child: Column(
                children: [
                  Text(""),
                  Text(""),
                  Text('อาการทั่วไปมีดังนี้ '),
                  Text(""),
                  Text(" -มีไข้"),
                  Text(""),
                  Text(" -ไอแห้ง"),
                  Text(""),
                  Text(" -อ่อนเพลีย"),
                  Text(""),
                  Text("อาการที่พบไม่บ่อยนักมีดังนี้"),
                  Text(""),
                  Text(" -ปวดเมื่อยเนื้อตัว"),
                  Text(""),
                  Text(" -เจ็บคอ"),
                  Text(""),
                  Text(" -ท้องเสีย"),
                  Text(""),
                  Text(" -ปวดศีรษะ"),
                  Text(""),
                  Text(" -ตาแดง"),
                  Text(""),
                  Text(" -สูญเสียความสามารถในการดมกลิ่นและรับรส"),
                  Text(""),
                  Text(" -มีผื่นบนผิวหนัง หรือนิ้วมือนิ้วเท้าเปลี่ยนสี"),
                  Text(""),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


