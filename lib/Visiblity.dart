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
home: VisiblityWidget(),
    );
  }
}
class VisiblityWidget extends StatefulWidget {
  const VisiblityWidget({super.key});

  @override
  State<VisiblityWidget> createState() => _VisiblityWidgetState();
}

class _VisiblityWidgetState extends State<VisiblityWidget> {
  bool _isVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visiblity"),
      ),
      body:Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(

              visible: _isVisible,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.indigoAccent,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _isVisible=!_isVisible;
              });
            }, child:Text("Click")
            )

          ],
        ),
      ),
    );
  }
}

