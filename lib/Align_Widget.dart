
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
      debugShowCheckedModeBanner: false,
      home: AlignWidget(),
    );
  }
}
class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALign Widget"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.only(top: 35,left: 35),
            child: Text("Align",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}

