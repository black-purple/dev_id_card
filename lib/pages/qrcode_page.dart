import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:dev_id_card/utilities/konstants.dart';

class QRPage extends StatefulWidget {
  final String? data;
  QRPage({
    this.data,
  });

  @override
  _QRPageState createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    String? dataText = widget.data;
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10 * (deviceHeight(context) / 100),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [kelevation2],
              ),
              padding: EdgeInsets.all(3),
              child: QrImage(
                data: "$dataText",
                version: QrVersions.auto,
                size: 200.0,
                foregroundColor: Colors.white,
                gapless: false,
              ),
            ),
            SizedBox(
              height: 5 * (deviceHeight(context) / 100),
            ),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    'Scan QR Code',
                    style: TextStyle(fontSize: 30, color: Colors.teal),
                  ),
                  SizedBox(
                    height: 5 * (deviceHeight(context) / 100),
                  ),
                  Text(
                    'Need a QR code scanner?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 6 * (deviceHeight(context) / 100),
                  ),
                  Text(
                    'Get one now for free',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  SizedBox(
                    height: 2 * (deviceHeight(context) / 100),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.get_app,
                      color: Colors.green,
                      size: 25,
                    ),
                    label: Text(
                      'QR Scanner',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
