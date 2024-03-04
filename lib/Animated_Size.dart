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
      home: AnimatedSizeWidget(),
    );
  }
}

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double _size=300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Size"),
      ),
      body:Column(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                _size=_size==300?100:300;
              });
            },
            child: Container(
              color: Colors.white38,
              child: AnimatedSize(
                curve: Curves.easeIn,
                  duration: const Duration(seconds: 1),
                child: FlutterLogo(size: _size,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
