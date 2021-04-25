import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:dev_id_card/konstants.dart';

class QRPage extends StatefulWidget {
  final String? data;
  QRPage({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  _QRPageState createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('QR code'),
        backgroundColor: Colors.teal[700],
      ),
      backgroundColor: Colors.teal,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [kelevation2],
        ),
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.only(
          top: 20 * (deviceWidth / 100),
          left: 21 * (deviceWidth / 100),
        ),
        child: QrImage(
          data: "$widget.data",
          version: QrVersions.auto,
          size: 200.0,
          foregroundColor: Colors.white,
          gapless: false,
        ),
      ),
    );
  }
}
