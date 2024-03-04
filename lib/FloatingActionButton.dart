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
      home:FalotingActionbtnWidget(),
    );
  }
}

class FalotingActionbtnWidget extends StatefulWidget {
  const FalotingActionbtnWidget({super.key});

  @override
  State<FalotingActionbtnWidget> createState() => _FalotingActionbtnWidgetState();
}

class _FalotingActionbtnWidgetState extends State<FalotingActionbtnWidget> {
  var a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      body: Center(
        child: Text(a.toString())
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          a++;
        });

      },
        child: Icon(Icons.add),
      ),
    );
  }
}


