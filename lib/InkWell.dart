
import 'package:allwidgets/secon_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inkwell(),
    );
  }
}
class Inkwell extends StatefulWidget {
  const Inkwell({super.key});

  @override
  State<Inkwell> createState() => _InkwellState();
}

class _InkwellState extends State<Inkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      body: Center(
        child: InkWell(

          child: Container(
            padding: EdgeInsets.all(12),
            child: Text("Tap Me",style: TextStyle(fontSize: 24.0)),
          ),
          onTap: (){
            // print("InkWell tapped");
            Navigator.push(context, MaterialPageRoute(builder: (context) => SeconPage(),));
          },
        ),
      ),
    );
  }
}


