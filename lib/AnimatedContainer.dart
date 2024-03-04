import 'package:flutter/material.dart';

void main() {
  runApp(Annimation());
}

class Annimation extends StatefulWidget {
  const Annimation({super.key});

  @override
  State<Annimation> createState() => _AnnimationState();
}

class _AnnimationState extends State<Annimation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedContainerWidget(),
    );
  }
}
class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  var _width=200.0;
  var _height=100.0;
  var _color=Colors.amber;
  bool flag=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                color: _color,
                width: _width,
                height: _height,
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
          setState(() {
            if(flag) {
              _width = 100.0;
              _height = 200.0;
              _color = Colors.cyan;
              flag=false;
            }
            else{
              _width = 200.0;
              _height = 100.0;
              _color= Colors.amber;
              flag=true;
            }
          });
          }, child: Text("CLick on"))
        ],
      ),

    );
  }
}

