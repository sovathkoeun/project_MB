
import 'package:flutter/material.dart';

class ListBox extends StatefulWidget {
  @override
  _ListBoxState createState() => _ListBoxState();
}

class _ListBoxState extends State<ListBox> {
  Map <String, bool> todo = {
    "js": false,
    "java":false,
    "php":false,
    "database": false,
  };
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: ListView(  
         children: todo.keys.map((String key) {
           return CheckboxListTile(
             title: Text(key),
             value: todo[key],
             onChanged: (bool value) {
               setState(() {
                 todo[key] = value;
               });
             },
           );
         }).toList(),
       ),
    );
  }
}