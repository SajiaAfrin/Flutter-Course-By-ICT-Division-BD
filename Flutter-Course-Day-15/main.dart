import 'package:flutter/material.dart';
import 'package:sajia/text_field.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: "Lobster"
      // ),
      // home: HomePage()
      // home: ProfileScreen(),
      home: TextFieldScreen(),
    ),
  );
}
