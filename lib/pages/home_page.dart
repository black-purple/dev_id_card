import 'package:dev_id_card/pages/qrcode_page.dart';
import 'package:dev_id_card/utilities/animated_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/text_icon_card.dart';
import 'package:dev_id_card/utilities/constants.dart';

class HomePage extends StatelessWidget {
  HomePage({
    required this.phoneNum,
    required this.email,
    required this.githubUsername,
  });

  final String phoneNum;
  final String email;
  final String githubUsername;

  String contactInfo(phoneNum, email, githubUsername) {
    String data =
        'Phone Number: $phoneNum \nEmail: $email \nGithub: github.com/$githubUsername';
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text(
          'Back',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black,
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.teal,
      body: Container(
        child: ListView(children: [
          SizedBox(
            height: 10 * (deviceHeight(context) / 100),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/github_logo.png'),
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
                    afterIconSpace: 30,
                    fontSize: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconTextCard(
                    icon: Icons.mail,
                    iconColor: Colors.amber,
                    cardText: email,
                    afterIconSpace: email.length.toDouble() <= 24 ? 18 : 16,
                    fontSize: email.length.toDouble() <= 23 ? 20 : 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconTextCard(
                    icon: FontAwesomeIcons.github,
                    iconColor: Color(0xFF443583),
                    cardText: 'github.com/$githubUsername',
                    afterIconSpace:
                        githubUsername.length.toDouble() <= 13 ? 14 : 18,
                    fontSize: githubUsername.length.toDouble() <= 13 ? 18 : 13,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Check if everything is correct',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: IconButton(
                  iconSize: 30,
                  color: Color(0xFF487eb0),
                  onPressed: () {
                    Navigator.of(context).push(
                      SlideRight(QRPage(
                          data: contactInfo(phoneNum, email, githubUsername),
                        ),),
                    );
                  },
                  icon: Icon(
                    Icons.qr_code,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
