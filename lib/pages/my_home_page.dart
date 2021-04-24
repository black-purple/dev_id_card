import 'package:flutter/material.dart';
import 'package:dev_id_card/TextIconCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String githubLink = 'black-purple/dev_id_card.git';
  String email = 'example@example.com';
  String phoneNum = '+212 645879000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/avatar.png'),
                  maxRadius: 80,
                ),
              ],
            ),
            SizedBox(
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
              height: 50,
              width: 210,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //* Container1
                TextIconCard(
                  icon: Icons.phone,
                  iconColor: Colors.green,
                  fontSize: 20,
                  cardText: phoneNum,
                  afterIcon: 45,
                ),
                //* Container2
                SizedBox(
                  height: 20,
                ),
                TextIconCard(
                  iconColor: Colors.amber,
                  cardText: email,
                  afterIcon: 20,
                  icon: Icons.mail,
                  fontSize: 20,
                ),
                //* Container3
                SizedBox(
                  height: 20,
                ),
                TextIconCard(
                  iconColor: Color(0xFF443583),
                  cardText: githubLink,
                  afterIcon: 18,
                  icon: FontAwesomeIcons.github,
                  fontSize: 18,
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made with',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
