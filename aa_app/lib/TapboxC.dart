//---------------------------- ParentWidget ----------------------------

import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
  @override
  _ParentWidgetCState createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC > {
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
                  'การดูแลตนเอง',
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
                  Text(""),
                  Text(""),
                  Text('หลังจากสัมผัสกับผู้ที่ติดเชื้อโควิด-19 โปรดทำตามขั้นตอนต่อไปนี้ '),
                  Text(""),
                  Text(""),
                  Text(""),
                  Text("โทรหาผู้ให้บริการด้านการดูแลสุขภาพหรือสายด่วนโควิด-19 เพื่อหาสถานที่และเวลาเพื่อรับการตรวจ"),
                  Text(""),
                  Text("ให้ความร่วมมือตามขั้นตอนการติดตามผู้สัมผัสเพื่อหยุดการแพร่กระจายของไวรัส"),
                  Text(""),
                  Text("หากยังไม่ทราบผลตรวจ ให้อยู่บ้านและอยู่ห่างจากผู้อื่นเป็นเวลา 14 วัน"),
                  Text(""),
                  Text("ขณะที่กักตัว อย่าออกไปที่ทำงาน โรงเรียน หรือสถานที่สาธารณะ ขอให้ผู้อื่นนำของอุปโภคบริโภคมาให้"),
                  Text(""),
                  Text("รักษาระยะห่างจากผู้อื่นอย่างน้อย 1 เมตร แม้จะเป็นสมาชิกในครอบครัวก็ตาม"),
                  Text(""),
                  Text("สวมหน้ากากอนามัยเพื่อป้องกันการแพร่เชื้อสู่ผู้อื่น รวมถึงในกรณีที่คุณต้องเข้ารับการรักษา"),
                  Text(""),
                  Text("กักตัวเองในห้องแยกจากสมาชิกครอบครัวคนอื่นๆ หากทำไม่ได้ ให้สวมหน้ากากอนามัย"),
                  Text(""),
                  Text("หากใช้ห้องร่วมกับผู้อื่น ให้จัดเตียงห่างกันอย่างน้อย 1 เมตร"),
                  Text(""),
                  Text("โทรหาผู้ให้บริการด้านการดูแลสุขภาพทันทีหากพบสัญญาณอันตรายต่อไปนี้ ได้แก่ หายใจลำบาก สูญเสีย"),
                  Text(""),
                  Text("ติดต่อกับคนที่คุณรักด้วยโทรศัพท์หรือทางออนไลน์ รวมถึงออกกำลังกายที่บ้าน เพื่อให้คุณมีสภาพจิตใจที่ดีอยู่เสมอ"),
                  Text(""),
                  Text("โทรหาผู้ให้บริการด้านการดูแลสุขภาพทันทีหากพบสัญญาณอันตรายต่อไปนี้ ได้แก่ หายใจลำบาก สูญเสียความสามารถในการพูดและเคลื่อนไหว แน่นหน้าอกหรือมีภาวะสับสน"),
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


