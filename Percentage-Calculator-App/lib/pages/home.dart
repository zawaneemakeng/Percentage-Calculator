import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "           Welcome\n เเอปคำนวณเปอร์เซนต์ %",
              style: TextStyle(fontFamily: 'TAOSUAN', fontSize: 35),
            ),SizedBox(
              height: 40,),
            Image.asset('images/per-home.png', width: 200, height: 150)
            ,SizedBox(
              height: 100,
            ),
          ],
        )),Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
                "Let's Start!",
                style: TextStyle(fontFamily: 'TAOSUAN', fontSize: 30),textAlign: TextAlign.right),
        ),
      ],
    );
  }
}
