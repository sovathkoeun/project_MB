
import 'package:flutter/material.dart';
import 'package:project_mobile/modal.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Users(),
    );
  }
}