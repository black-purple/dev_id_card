import 'dart:ui';

import 'package:dev_id_card/konstants.dart';
import 'package:dev_id_card/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController githubController = TextEditingController();

    bool textfieldCheck() {
      String phoneNum, email, github;

      phoneNum = phoneNumController.text;
      email = emailController.text;
      github = githubController.text;

      if (phoneNum == '' || email == '' || github == '') {
        return true;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              phoneNum: phoneNum,
              email: email,
              githubUsername: github,
            ),
          ),
        );
        return false;
      }
    }

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: EdgeInsets.only(
          left: 10 * (deviceWidth(context) / 100),
          right: 10 * (deviceWidth(context) / 100),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5 * (deviceHeight(context) / 100),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to the ID Card Generator',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 50),
              ),
              //* Phone Number Field

              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: phoneNumController,
                  maxLength: 14,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    helperText: 'Type your phone number',
                    helperStyle: TextStyle(
                      color: Colors.teal,
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              //* Email Field
              SizedBox(
                height: 5 * (deviceHeight(context) / 100),
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 30,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    labelText: 'E-mail Address',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    helperText: 'Type your e-mail address',
                    helperStyle: TextStyle(
                      color: Colors.teal,
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.amber,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              ),
              //* Github Field
              SizedBox(
                height: 5 * (deviceHeight(context) / 100),
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: githubController,
                  maxLength: 14,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    labelText: 'Github Account',
                    labelStyle: TextStyle(
                      color: Color(0xFF443583),
                    ),
                    helperText: 'Type your github username',
                    helperStyle: TextStyle(
                      color: Colors.teal,
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.github,
                      color: Color(0xFF443583),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF443583),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8 * (deviceHeight(context) / 100),
              ),
              SizedBox(
                width: 70 * (deviceWidth(context) / 100),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {
                    textfieldCheck();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          'Create Card',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.teal,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3 * (deviceHeight(context) / 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        'Please fill all the fields',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
