import 'package:allwidgets/Ftab.dart';
import 'package:allwidgets/Stab.dart';
import 'package:allwidgets/Ttab.dart';
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
  home: TabBarWidget(),
    );
  }
}
class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,child: Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
      ),
      body: Column(
        children: [
     TabBar(tabs: [
       Tab(
         icon: Icon(Icons.home,
           color: Colors.redAccent,
         ),
         text: "Home",

       ) ,
       Tab(
         icon: Icon(Icons.settings,
           color: Colors.redAccent,
         ),
         text: "Home",

       ),
       Tab(
         icon: Icon(Icons.person,
           color: Colors.redAccent,
         ),
         text: "Home",

       )
     ]),
          Expanded(
            child: TabBarView(children: [
              FirstTab(),
              SeconTab(),
              ThirdTab()
            ]),
          )
        ],
      ),
    )
    );
  }
}

