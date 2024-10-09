import 'package:flutter/material.dart';

Color grey = const Color.fromARGB(255, 230, 230, 230);

Color blacker = const Color(0xff333333);
Color menuIconColor = const Color.fromARGB(255, 73, 73, 73);

AppBar appBarWithBackButton(BuildContext context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          size: 18,
        )),
  );
}

Widget backButton(BuildContext context) {
  return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 18,
      ));
}
