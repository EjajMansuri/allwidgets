
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
      home: TextFieldWidget(),
    );
  }
}


class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController nameEditController=TextEditingController();
  TextEditingController emailEditController=TextEditingController();
  TextEditingController phoneEditController=TextEditingController();
  TextEditingController addressEditController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: ListView(
        children: [
          EditText(nameEditController ,"Name"),
          EditText(nameEditController,"email"),
          EditText(nameEditController, "Phone"),
          EditText(nameEditController,"Addess"),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
            child: Container(
           height: 50,
                child: ElevatedButton(onPressed: (){}, child: Text("Submit"))),
          ),
        ],
      ),
    );
  }
}

  Widget EditText(TextEditingController controller,String label){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2,color: Colors.yellow),
        ),
         focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2,color: Colors.pink)
         )
      ),
    ),
  );
  }



