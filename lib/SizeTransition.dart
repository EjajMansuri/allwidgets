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

class SizeTransitionWidget extends StatefulWidget {
  const SizeTransitionWidget({super.key});

  @override
  State<SizeTransitionWidget> createState() => _SizeTransitionWidgetState();
}

class _SizeTransitionWidgetState extends State<SizeTransitionWidget> with TickerProviderStateMixin {
  late final AnimationController _controller =AnimationController(vsync: this,
    duration: const Duration(seconds: 2)
  )..repeat(reverse: true);
  late final Animation<double> _animation =CurvedAnimation(parent: _controller, curve: Curves.easeInSine);
  void dispose(){
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeTransition'),
      ),
      body: Column(
        children: [
          SizeTransition(
              sizeFactor: _animation,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: const Center(
              child: FlutterLogo(size: 300.0,),
            ),
          )
        ],
      ),
    );
  }
}
