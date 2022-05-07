import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  //const CalculatePage({ Key? key }) : super(key: key);

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  // ต่าแหน่งสำหรับเก็บข้อมูลของค่าที่ user กรอกเข้ามา
  TextEditingController price = TextEditingController();
  TextEditingController per = TextEditingController();
  TextEditingController result = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState ค่าเริ่มต้น การรันครั้งเเรก
    super.initState();
    result.text = "------------------------------";
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset('images/per.png', width: 200, height: 150),
            ),
            Text(
              "คำนวณเปอร์เซนต์ % ",
              style: TextStyle(fontFamily: 'TAOSUAN', fontSize: 40),
            ),
            SizedBox(height:30),
            TextField(
              controller: price, //ลิงค์กับ text editing
              decoration: InputDecoration(
                  labelText: "กรอกจำนวน", border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              controller: per,
              decoration: InputDecoration(
                  labelText: "กรอก % ที่ต้องการ  เช่น 10", border: OutlineInputBorder(),),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  var cal = double.parse(price.text)  * int.parse(per.text) /100;
                  var total = double.parse(price.text)  - (cal);
                
                  setState(() {
                    
                    result.text = "จำนวน  ${price.text}   ลบ ${per.text} %  คือ $cal \n จำนวนหลังหักลบ จะได้ $total";
                  });
                },
                child: Text("คำนวณ"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffc96d8c)),
                    padding: MaterialStateProperty.all(//ความใหญ่ปุ่ม
                        EdgeInsets.fromLTRB(30, 10, 30, 10)),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 20, fontFamily: 'TAOSUAN')))),
            SizedBox(height: 40),
            Text(
              result.text,
              style: TextStyle(fontFamily: "TAOSUAN", fontSize: 25),
            )
          ])),
        ),
      ],
    );
  }
}