import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _controller;
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
            TextFormField(
              controller: _controller,
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
                hintText: "Phone Number",
              ),
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
    );
  }
}
