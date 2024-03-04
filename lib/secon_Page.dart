import 'package:flutter/material.dart';

void main() {
  runApp(second());
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SeconPage(),
    );
  }
}

class SeconPage extends StatefulWidget {
  const SeconPage({super.key});

  @override
  State<SeconPage> createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Second page"),
      ),
    );
  }
}

