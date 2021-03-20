// ParentWidget manages the state for TapboxB.

//------------------------ ParentWidget --------------------------------

import 'package:flutter/material.dart';

class ParentWidgetB extends StatefulWidget {
  @override
  _ParentWidgetBState createState() => _ParentWidgetBState();
}

class _ParentWidgetBState extends State<ParentWidgetB > {
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
                  'วิธีป้องกันการแพร่ระบาดของโควิด-19',
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
                  'images/cv.jpg',
                  height: 300,
                ),
                titleSection
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 30, right: 30),
              child: Column(
                children: [
                  Text("วิธีป้องกันการแพร่ระบาดของโควิด-19", softWrap: true,),
                  Text(""),
                  Text(' -ล้างมือบ่อยๆ โดยใช้สบู่และน้ำ หรือเจลล้างมือที่มีส่วนผสมหลักเป็นแอลกอฮอล์ ', softWrap: true,),
                  Text(""),
                  Text(" -สวมหน้ากากอนามัยเมื่อเว้นระยะห่างไม่ได้", softWrap: true,),
                  Text(""),
                  Text(" -ไม่สัมผัสตา จมูก หรือปาก", softWrap: true,),
                  Text(""),
                  Text(" -ปิดจมูกและปากด้วยข้อพับด้านในข้อศอกหรือกระดาษชำระเมื่อไอหรือจาม", softWrap: true,),
                  Text(""),
                  Text(" -เก็บตัวอยู่บ้านเมื่อรู้สึกไม่สบาย"),
                  Text(""),
                  Text(" -หากมีไข้ ไอ และหายใจลำบากโปรดไปพบแพทย์"),
                  Text(""),
                  Text(" -ท้องเสีย"),
                  Text(""),
                  Text("โปรดติดต่อล่วงหน้าเพื่อที่ผู้ให้บริการด้านสุขภาพจะแนะนำให้คุณไปยังสถานพยาบาลที่ถูกต้องได้อย่างรวดเร็ว ซึ่งจะช่วยปกป้องคุณ รวมถึงป้องกันการแพร่กระจายของไวรัสและการติดเชื้ออื่นๆ"),
                  Text(""),
                  Text("หน้ากากอนามัย"),
                  Text(""),
                  Text(" หน้ากากอนามัยช่วยป้องกันไม่ให้ผู้ที่สวมแพร่กระจายไวรัสไปยังผู้อื่น อย่างไรก็ตาม หน้ากากอนามัยเพียงอย่างเดียวป้องกันเชื้อโควิด-19 ไม่ได้ จึงควรรักษาระยะห่างและหมั่นทำความสะอาดของมือร่วมด้วย รวมถึงปฏิบัติตามคำแนะนำจากหน่วยงานสาธารณสุขในพื้นที่"),
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


