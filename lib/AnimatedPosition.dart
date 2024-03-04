import 'package:allwidgets/Stab.dart';
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
    return MaterialApp();
  }
}
class ANimatedPositionWidget extends StatefulWidget {
  const ANimatedPositionWidget({super.key});

  @override
  State<ANimatedPositionWidget> createState() => _ANimatedPositionWidgetState();
}

class _ANimatedPositionWidgetState extends State<ANimatedPositionWidget> {
  bool selected =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Position"),
      ),
      body: Center(
        child: SizedBox(width: 200,height: 350,
           child: Stack(
             children: [
               AnimatedPositioned(
                 width: selected? 200.0 :50.0,
                 height: selected? 50.0 :200.0,
                 top: selected? 50.0 :150.0,
                 duration: const Duration(seconds: 2),
                 curve: Curves.fastOutSlowIn,
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         selected =!selected;
                       });
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         color: Colors.orangeAccent,
                         borderRadius: BorderRadius.circular(25)
                       ),
                     ),
                   ),
               )
             ],
           ),
        ),
      ),
    );
  }
}

