import 'package:allwidgets/HeroSecond_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(hero());
}
class hero extends StatefulWidget {
  const hero({super.key});

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroWidget(),
    );
  }
}

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Widget"),
      ),
      body: Container(
        child: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HeroSecondPage(),));
          },
          child: Hero(
              tag: "Background",
              child:Image.asset('assets/images/Taj.jpg',width: 100,height: 100,),
          ),
        ),
        ),
      ),
    );
  }
}



