import 'package:allwidgets/Align_Widget.dart';
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
      home: SpcerWidget(
      ),
    );
  }
}
class SpcerWidget extends StatefulWidget {
  const SpcerWidget({super.key});

  @override
  State<SpcerWidget> createState() => _SpcerWidgetState();
}

class _SpcerWidgetState extends State<SpcerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Spcer widget"),
       ),
      body: Row(
        children: [
          // Spacer(),
          Container(
            width: 70,
            height: 70,
            color: Colors.pink,
          ),
          Spacer(flex: 2,),
          Container(
            width: 70,
            height: 70,
            color: Colors.deepOrange,
          ),       Container(
            width: 70,
            height: 70,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}


