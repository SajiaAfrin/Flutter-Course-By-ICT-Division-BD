import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Demo App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lobster"
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Nike",
            style: TextStyle(
              //color: Colors.black,
              color: Color(0xffffffff), //0xff initial code
              fontSize: 20,
              //fontWeight: FontWeight.bold,
              fontWeight: FontWeight.w500,
              //fontStyle: FontStyle.italic,
              fontFamily: "Lobster",
              //letterSpacing: 1.5,
            ),
          ),
        ),

        // body: Center(
        //   child: Image.asset(
        //     "assets/nike.jpg",
        //     width: 250,
        //     height: 250,
        //   ),
        //   ),

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 80,
        //     backgroundImage: NetworkImage("https://picsum.photos/250?image=9"),
        //   ),
        // ),
        
        // body: Center(
        //   child: Text(
        //     "The quick brown fox jumps over the lazy dog",
        //     style: TextStyle(fontFamily: "SourceCodePro"),

        //   )
        //   )
        
        body: Center(
          child: Icon(
            Icons.camera,
            size:60,
            color: Colors.black,
          )
          )
      ),
    ),
  );
}