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
      home: PopUpMenuWidget(),
    );
  }
}

class PopUpMenuWidget extends StatefulWidget {
  const PopUpMenuWidget({super.key});

  @override
  State<PopUpMenuWidget> createState() => _PopUpMenuWidgetState();
}

class _PopUpMenuWidgetState extends State<PopUpMenuWidget> {
  String title='Frist item';
  String item1='Second item';
  String item2='Third item';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("PopUp Menu"),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: Text("item1"),
              value: item1,
            ),
            PopupMenuItem(child: Text("item2"),
              value: item2,
            ),
          ],

            onSelected: (String newValue){
            setState(() {
              title=newValue;
            });
            },
          )
        ],
      ),

    );
  }
}
