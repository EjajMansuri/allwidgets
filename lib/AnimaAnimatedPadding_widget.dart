import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedPaddingWidget(),
    );
  }
}

 class AnimatedPaddingWidget extends StatefulWidget {
   const AnimatedPaddingWidget({super.key});
 
   @override
   State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
 }
 
 class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
   double inset = 5.0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Animated Padding'),
       ),
       body: Center(
         child: AnimatedPadding(
           // curve: Curves.decelerate,
           padding: EdgeInsets.all(inset), duration: Duration(milliseconds: 10000),
           child: Image(image: AssetImage('assets/images/Taj.jpg'),
           ),
         ),
       ),
       floatingActionButton: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           FloatingActionButton(
             child: Icon(Icons.zoom_out),
               onPressed: (){
             setState(() {
               inset=inset+100;
             });
           }),
           FloatingActionButton(
             child: Icon(Icons.zoom_in),
               onPressed: (){
             setState(() {
               if(inset>100){
                 inset -=100;
               }

             });
           })
         ],
       ),
     );
   }
 }
 