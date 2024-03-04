import 'package:flutter/material.dart';

void main() {
  runApp(herosecond());
}

class herosecond extends StatefulWidget {
  const herosecond({super.key});

  @override
  State<herosecond> createState() => _herosecondState();
}

class _herosecondState extends State<herosecond> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroSecondPage(),
    );
  }
}
class HeroSecondPage extends StatefulWidget {
  const HeroSecondPage({super.key});

  @override
  State<HeroSecondPage> createState() => _HeroSecondPageState();
}

class _HeroSecondPageState extends State<HeroSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
      ),
      body: Container(
        child: Center(
          child: Hero(tag: "Background", child: Image.asset('assets/images/Taj.jpg')),
        ),
      ),
    );
  }
}
