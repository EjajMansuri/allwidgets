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
      
    );
  }
}

class PaindulamWidget extends StatefulWidget {
  const PaindulamWidget({super.key});

  @override
  State<PaindulamWidget> createState() => _PaindulamWidgetState();
}

class _PaindulamWidgetState extends State<PaindulamWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paindulam'),
      ),
    );
  }
}
