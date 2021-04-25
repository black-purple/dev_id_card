import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _controller1;
    var _controller2;
    var _controller3;
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              // Color(0xFF2A5470),
              Color(0xFF4C4177),
              Colors.teal
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 10 * (deviceWidth / 100),
            right: 10 * (deviceWidth / 100),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 5 * (deviceHeight / 100),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to the ID Card Generator',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 50),
              ),
              //* Phone Number Field

              TextFormField(
                controller: _controller1,
                maxLength: 14,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  labelText: 'Phone Number',
                  helperText: 'Type your phone number',
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
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              //* Email Field
              SizedBox(
                height: 5 * (deviceHeight / 100),
              ),
              TextFormField(
                controller: _controller2,
                maxLength: 24,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  labelText: 'E-mail Address',
                  helperText: 'Type your e-mail address',
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
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              //* Github Field
              SizedBox(
                height: 5 * (deviceHeight / 100),
              ),
              TextFormField(
                controller: _controller3,
                maxLength: 14,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  labelText: 'Github Account',
                  helperText: 'Type your github account',
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
                      color: Colors.teal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8 * (deviceHeight / 100),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/homePage');
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.teal,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
