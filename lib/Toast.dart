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
      home: ToastWidget(),
    );
  }
}
class ToastWidget extends StatefulWidget {
  const ToastWidget({super.key});

  @override
  State<ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<ToastWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Widget '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

        }, child: Text("Toast"),

        ),
      ),
    );
  }
}
