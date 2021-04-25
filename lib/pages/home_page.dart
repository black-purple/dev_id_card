import 'package:dev_id_card/pages/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/widgets/TextIconCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String phoneNum = '+212 645879000';
  String email = 'example@example.com';
  String githubLink = 'black-purple/dev_id_card.git';
  String? data;

  String? contactInfo() {
    data = 'Phone Number: $phoneNum \n Email: $email \n Github: $githubLink';
    return data;
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: ListView(children: [
          SizedBox(
            height: 10 * (deviceHeight / 100),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  IconTextCard(
                    icon: Icons.phone,
                    iconColor: Colors.green,
                    cardText: phoneNum,
                    afterIcon: 45,
                    fontSize: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconTextCard(
                    icon: Icons.mail,
                    iconColor: Colors.amber,
                    cardText: email,
                    afterIcon: 20,
                    fontSize: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconTextCard(
                    icon: FontAwesomeIcons.github,
                    iconColor: Color(0xFF443583),
                    cardText: githubLink,
                    afterIcon: 18,
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              IconButton(
                  onPressed: () {
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => QRPage(
                        data: contactInfo(),
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  icon: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                    size: 35,
                  )),
              SizedBox(
                height: 20,
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
