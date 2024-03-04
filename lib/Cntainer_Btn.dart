import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Btn(),
    );
  }
}

class Btn extends StatefulWidget {
  const Btn({Key? key}) : super(key: key);

  @override
  _BtnState createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Good'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.centerRight, // Change alignment here
                children: [
                  Center(
                    child: Container(
                      width: 250,
                      height: 10,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow),
                        color: Colors.black, // Icon color
                        splashColor: Colors.blue, // Splash color when tapped
                        highlightColor: Colors.red, // Highlight color when tapped
                        iconSize: 48.0,
                        padding: EdgeInsets.all(16.0),
                        // Ink widget for setting background color
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
