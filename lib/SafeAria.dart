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
      home: SafeAriaWidget(),
    );
  }
}

class SafeAriaWidget extends StatefulWidget {
  const SafeAriaWidget({super.key});

  @override
  State<SafeAriaWidget> createState() => _SafeAriaWidgetState();
}

class _SafeAriaWidgetState extends State<SafeAriaWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeAria'),
      ),
      body: SafeArea(
          child: Text('Hello world', style: TextStyle(fontSize: 20),)
      ),
    );
  }
}
