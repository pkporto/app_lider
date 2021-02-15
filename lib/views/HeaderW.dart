import 'package:flutter/material.dart';
import 'MainView.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  static const Color primaryColor = Color(0xFF0D47A1);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.menu_outlined,
            color: primaryColor,
          ),
          SizedBox(
            width: 10.0,
          ),
          Image.asset(
            'images/logo.png',
            height: 50,
            width: 200.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.storefront,
            color: primaryColor,
          ),
          SizedBox(
            width: 15.0,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
