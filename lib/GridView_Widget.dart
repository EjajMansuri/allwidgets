import 'package:flutter/material.dart';

void mkain() {
  runApp(Grid());
}
class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewWidget(),
    );
  }
}
class GridViewWidget extends StatefulWidget {

  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    var ColorList = [
      Colors.amber,
      Colors.green,
      Colors.blue,
      Colors.redAccent,
      Colors.pink,
      Colors.grey,
      Colors.purple,
      Colors.purpleAccent,
      Colors.teal,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 11,mainAxisSpacing: 11), itemBuilder: (context, index) {
       return Container(color: ColorList[index],);
      },
        itemCount: ColorList.length,

      ),
    );
  }
}

