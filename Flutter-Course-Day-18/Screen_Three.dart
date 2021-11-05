// import 'package:demo_project/Screen_One.dart';
// import 'package:demo_project/Screen_Two.dart';
import 'package:demo_project/Screen_One.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  static final String path = "ScreenThree";
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Three Screen"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushNamedAndRemoveUntil(
                context, ScreenOne.path, (route) => false);
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
