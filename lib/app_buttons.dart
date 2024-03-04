import 'package:flutter/material.dart';

class AppButtons{
 Widget myButton(String title,BuildContext context,Widget targetWidgets,Color colorr){
    return ElevatedButton(
      onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => targetWidgets),
      );
    }, child: Text(title),
      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:BorderRadius.zero),backgroundColor: colorr),
    );
  }
}