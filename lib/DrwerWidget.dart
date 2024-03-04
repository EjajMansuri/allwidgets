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
      home: DrawerWidget(),
    );
  }
}

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
   drawer: Drawer(
     child: ListView(
       children: [
         DrawerHeader(
           decoration: BoxDecoration(
             color: Colors.pinkAccent
           ),
           child: Column(
             children: [
               ClipRRect(child: Image.asset('assets/images/engin.jpg',width: 100,height: 100,),
                 borderRadius: BorderRadius.circular(20),
               ),
               Text('\nEjaj'),
             ],
           ),
         ),
         Column(
           children: [
             ListTile(
               title: Text('Home'),
               leading: Icon(Icons.home),
             ),
             ListTile(
               title: Text('Account'),
               leading: Icon(Icons.account_box),
             ),
             ListTile(
               title: Text('Cart'),
               leading: Icon(Icons.shopping_cart),
             ),
             ListTile(
               title: Text('Logout'),
               leading: Icon(Icons.logout),
             ),
           ],
         )
       ],
     ),
   ),
    );
  }
}

