import 'package:allwidgets/Align_Widget.dart';
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

    );
  }
}
class MediaQQuery extends StatefulWidget {
  const MediaQQuery({super.key});

  @override
  State<MediaQQuery> createState() => _MediaQueryState();
}

class _MediaQueryState extends State<MediaQQuery> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Media QUery'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: _mediaQuery.size.width*0.5,
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
          ),
          Container(
            width: _mediaQuery.size.width*0.5,
            decoration: BoxDecoration(
              color: Colors.lime,
            ),
          )
        ],
      ),
    );
  }
}
