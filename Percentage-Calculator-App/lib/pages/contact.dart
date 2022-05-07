import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(children: [
            SizedBox(height: 60,),
            Image.asset('images/contact.png', width: 200, height: 150),
            SizedBox(height: 30,),
            Text("Zawanee  Makeng",
                style: TextStyle(fontFamily: 'TAOSUAN', fontSize: 20)),
            Text("zawanee6063@gmail.com",
                style: TextStyle(fontFamily: 'TAOSUAN', fontSize: 20))
          ]),
        )
      ],
    );
  }
}
