import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class IconTextCard extends StatelessWidget {
  final String? cardText;
  final double afterIconSpace;
  final IconData icon;
  final double fontSize;
  final Color iconColor;

  IconTextCard({
    required this.iconColor,
    required this.cardText,
    required this.afterIconSpace,
    required this.icon,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 85,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
              SizedBox(
                width: afterIconSpace,
              ),
              Text(
                '$cardText',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              kelevation1,
            ],
          ),
        ),
      ],
    );
  }
}
