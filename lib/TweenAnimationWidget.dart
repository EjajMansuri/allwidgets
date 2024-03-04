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
      home: TweenAnimationWidget(),
    );
  }
}

class TweenAnimationWidget extends StatefulWidget {
  const TweenAnimationWidget({Key? key}) : super(key: key);

  @override
  State<TweenAnimationWidget> createState() => _TweenAnimationWidgetState();
}

class _TweenAnimationWidgetState extends State<TweenAnimationWidget> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
