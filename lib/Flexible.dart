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
      home:FlexibleWidget() ,
    );
  }
}

class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({super.key});

  @override
  State<FlexibleWidget> createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: Column(
        children: [
          Container(
           height: 300,
            color: Colors.pink,
            padding: EdgeInsets.all(20),
            child: Text('First Container',style: TextStyle(fontSize: 20),),
            alignment: Alignment.center,
          ) ,

          Flexible(
            fit: FlexFit.loose,
            // fit: FlexFit.tight
            child: Container(

             height: 150,
              color: Colors.deepOrange,
              padding: EdgeInsets.all(20),
              child: Text('First Container',style: TextStyle(fontSize: 20),),
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}

