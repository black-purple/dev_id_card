import 'package:dev_id_card/pages/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/text_icon_card.dart';
import 'package:dev_id_card/konstants.dart';

class HomePage extends StatelessWidget {
  HomePage({
    required this.phoneNum,
    required this.email,
    required this.githubUsername,
  });

  final String phoneNum;
  final String email;
  final String githubUsername;
  String? data = '';

  String? contactInfo() {
    data =
        'Phone Number: $phoneNum \n Email: $email \n Github: github.com/$githubUsername';
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
                    afterIconSpace: 45,
                    fontSize: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconTextCard(
                    icon: Icons.mail,
                    iconColor: Colors.amber,
                    cardText: email,
                    afterIconSpace: 20,
                    fontSize: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconTextCard(
                    icon: FontAwesomeIcons.github,
                    iconColor: Color(0xFF443583),
                    cardText: 'github.com/$githubUsername',
                    afterIconSpace: 18,
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QRPage(
                        data: data,
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.qr_code,
                  color: Colors.white,
                  size: 35,
                ),
              ),
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
