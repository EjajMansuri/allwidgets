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
    return MaterialApp();
  }
}
class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Wrap(
          spacing: 8,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: <Widget>[
            Chip(
                label: Text("Dart"),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),

            ),
            Chip(
                label: Text('Widget'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Layout'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Layout'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Wrap'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text("Ejaj kahn"),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Reyaj'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Faiyaj'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Sonu'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),
            Chip(
                label: Text('Amaira'),
              backgroundColor: Colors.amber,
              avatar: Icon(Icons.android, color: Colors.white),
            ),


          ],
        ),
      ),
    );
  }
}

