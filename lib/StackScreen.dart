
import 'package:flutter/material.dart';

void main(){
  runApp(StackWidget());
}
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _MyAppState();
}

class _MyAppState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Screen"),
      ),

      body:Center(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 200,
                color: Colors.cyan,
              ),Container(
                width: 100,
                height: 180,
                color: Colors.pink,
              )
              ,Container(
                width: 80,
                height: 160,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


