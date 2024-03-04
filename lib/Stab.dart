import 'package:allwidgets/Ftab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyAPp extends StatefulWidget {
  const MyAPp({super.key});

  @override
  State<MyAPp> createState() => _MyAPpState();
}

class _MyAPpState extends State<MyAPp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SeconTab(),
    );
  }
}

class SeconTab extends StatefulWidget {
  const SeconTab({super.key});

  @override
  State<SeconTab> createState() => _SeconTabState();
}

class _SeconTabState extends State<SeconTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: ElevatedButton(onPressed: (){
         showModalBottomSheet(
             context: context,
             builder: (BuildContext context){
              return Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text("MUsic"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),

                    ListTile(
                      leading: Icon(Icons.photo),
                      title: Text("Photo"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
             },
             );
       }, child: Text("ButtonSeet")
       ),
      ),
    );
  }
}
