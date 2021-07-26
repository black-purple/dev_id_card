import 'package:dev_id_card/pages/qrcode_page.dart';
import 'package:dev_id_card/utilities/animated_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                  thickness: 2,
                  color: Colors.white,
                ),
                height: 50,
                width: 310,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.only(left: 40,right: 40),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(Icons.phone, color: Colors.green,),
                      title: Text('$phoneNum'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.only(left: 40,right: 40),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(Icons.mail, color: Colors.amber,),
                      title: Text('$email'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.only(left: 40,right: 40),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(FontAwesomeIcons.github, color: Colors.deepPurple,),
                      title: Text('github.com/$githubUsername'),
                    ),
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
                height: 40,
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
