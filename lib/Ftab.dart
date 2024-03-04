import 'package:allwidgets/Align_Widget.dart';
import 'package:flutter/material.dart';

void main(){
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
      home: FirstTab(),
    );
  }
}
class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ElevatedButton(onPressed: (){
          showDialog(context: context, builder:(context) => AlertDialog(
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Close"))
              ],
            title: Text('Flutter Application'),
            contentPadding: EdgeInsets.all(20.0),
            content: Text('this is Alert Dialog'),
          ),
          );
        }, child: Text("Alert Dialog")
        ) ,
      ),
    );


  }
}

