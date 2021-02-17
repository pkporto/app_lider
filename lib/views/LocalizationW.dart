import 'package:flutter/material.dart';

class Localization extends StatefulWidget {
  @override
  _LocalizationState createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemWidth = size.width / 2 + 40;
    return Container(
      width: itemWidth,
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Patrick Porto",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Icon(Icons.room, color: Colors.grey),
                Text(
                  "Você está no Magazan humaitá",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
