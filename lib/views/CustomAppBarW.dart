import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF0D47A1);
    return AppBar(
      title: Image.asset('images/logo.png'),
      leading: IconButton(
        icon: Icon(
          Icons.menu_outlined,
          color: primaryColor,
        ),
        onPressed: () => print('clielc'),
        color: Colors.black,
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.storefront,
              color: primaryColor,
            ),
            onPressed: null),
        IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: primaryColor,
            ),
            onPressed: null),
      ],
    );
  }
}
