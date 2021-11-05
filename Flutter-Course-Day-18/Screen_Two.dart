// import 'package:demo_project/Screen_One.dart';
// import 'package:demo_project/Screen_Three.dart';
import 'package:demo_project/Screen_Three.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static final String path = "ScreenTwo";
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final data = ModalRoute.of(context)!.settings.arguments as List;
     final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Screen"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("name:${data[0]} , age:${data[1]}"),
          Text("name:${data["name"]} , age:${data["age"]}"),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenThree()));
                Navigator.pushNamed(context, ScreenThree.path);
              },
              child: Text("Screen Three"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ],
      ),
    );
  }
}
