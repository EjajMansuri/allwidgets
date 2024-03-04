import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Example'),
        ),
        body: SnackBarWidget(),
      ),
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final message = SnackBar(
            content: Text("This is a SnackBar"),
            backgroundColor: Colors.redAccent,
            padding: EdgeInsets.all(10),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: "Done",
              onPressed: () {}, // Provide an empty function or remove it if not needed
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(message);
        },
        child: Text("Click me"),
      ),
    );
  }
}
