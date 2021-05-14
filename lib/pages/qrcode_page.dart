import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:dev_id_card/konstants.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$dataText'),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [kelevation2],
              ),
              padding: EdgeInsets.all(3),
              child: QrImage(
                data: "${widget.data}",
                version: QrVersions.auto,
                size: 200.0,
                foregroundColor: Colors.white,
                gapless: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
