import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(DevIdCard());

class DevIdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dev ID Card',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
