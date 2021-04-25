import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/qrcode_page.dart';

void main() => runApp(DevIdCard());

class DevIdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/codePage': (context) => QRPage(),
      },
    );
  }
}
