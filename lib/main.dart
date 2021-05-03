import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/Home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Widgets App',
        home: HomePage());
  }
}
