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
      home: IcconButton(),
    );
  }
}
class IcconButton extends StatefulWidget {
  const IcconButton({super.key});

  @override
  State<IcconButton> createState() => _IcconButtonState();
}

class _IcconButtonState extends State<IcconButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iccon Button"),
      ),
      body: Center(
        child: IconButton(onPressed: (){
          print('Volume Up button pressed');
        }, icon:Icon(Icons.volume_up),
            // color: Colors.amber,
       // Icon color
          splashColor: Colors.blue, // Splash color when tapped
          highlightColor: Colors.red, // Highlight color when tapped
          iconSize: 48.0,
          padding: EdgeInsets.all(16.0),
          // Ink widget for setting background color

        ),
      ),

    );
  }
}
