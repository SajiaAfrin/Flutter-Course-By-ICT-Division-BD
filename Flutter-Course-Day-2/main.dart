import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Starmaker",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Starmaker",
            style: TextStyle(
              color: Color(0xFFffffff),
              fontSize: 30,
              fontWeight: FontWeight.w700,
              letterSpacing: 2.0,
            ),
          ),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(
              "assets/mi.png",
            ),
          ),
        ),
        // body: Center(
        //   child: CircleAvatar(
        //     radius: 60,
        //     backgroundImage: NetworkImage(
        //       "https://picsum.photos/250?image=9",
        //     ),
        //   ),
        // ),
      ),
    ),
  );
}
