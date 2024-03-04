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
      home: CustomDialogWidget(),
    );
  }

}

class CustomDialogWidget extends StatefulWidget {
  const CustomDialogWidget({super.key});

  @override
  State<CustomDialogWidget> createState() => _CustomDialogWidgetState();
}

class _CustomDialogWidgetState extends State<CustomDialogWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Custom dialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              customDialog(context);
            }, child:Text("onPressed")),
          ),
        ],
      ),
    );
  }
}

     customDialog(BuildContext context) {
  var nameControler=TextEditingController();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Dialog Title'),
      content: Text('This is the content of the dialog.'),
      actions: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: nameControler,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Name"
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    ),
  );
}

