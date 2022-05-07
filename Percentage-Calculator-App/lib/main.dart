import 'package:calculate/pages/contact.dart';
import 'package:calculate/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:calculate/pages/calc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage(),
    theme: new ThemeData(fontFamily: 'TAOSUAN'));
    
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    CalculatePage(),
    ContactPage()
  ]; // เก็บค่าได้หลายคา เริ่มนับจาก0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc96d8c),
        title: Text("เเอพคำนวณ",style: TextStyle(fontSize:25)),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffc96d8c),
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white.withOpacity(.50),
  selectedFontSize: 14,
  unselectedFontSize: 14,
        currentIndex: _currentIndex, // หน้าปัจจุบันที่เลือก

        items: [// หน้าแต่ละหน้ามีไอคอนอะไร?
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: "หน้าเเรก"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "คำนวณ"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "ติดต่อเรา"),
        ],
     
        onTap: (index){
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
