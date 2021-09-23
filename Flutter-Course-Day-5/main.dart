import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
        title: "Sajia",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Lobster"),
        home: HomePage()),
  );
}
