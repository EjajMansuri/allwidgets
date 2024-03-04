import 'package:allwidgets/Align_Widget.dart';
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
      home: RadioButtonWidget(),
    );
  }
}

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String _selectedValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioButton"),
      ),
      body: Column(
        children: [
        RadioListTile(
          title: Text("Option1"),
          value: 'Option1', groupValue: _selectedValue, onChanged:(value) {
          setState(() {
            _selectedValue=value!;
          });
        },),
        RadioListTile(
          title: Text("Option2"),
          value: 'Option2', groupValue: _selectedValue, onChanged:(value) {
          setState(() {
            _selectedValue=value!;
          });
        },),
        RadioListTile(
          title: Text("Option3"),
          value: 'option3', groupValue: _selectedValue, onChanged: (value) {
          setState(() {
            _selectedValue=value!;
          });
        },),
        ],
      ),
    );
  }
}

