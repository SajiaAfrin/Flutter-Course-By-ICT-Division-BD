import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text(
            "I'm Sajia",
            style: TextStyle(
              // color: Colors.green,
              color: Color(0xffFFFFFF),
              fontSize: 28,
              letterSpacing: 5.0,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          color: Colors.amberAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.indigo,
                    child: FlutterLogo(
                      size: 100,
                    ),
                    width: 100,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    child: FlutterLogo(
                      size: 100,
                    ),
                    width: 100,
                  ),
                  Container(
                    color: Colors.pink,
                    child: FlutterLogo(
                      size: 100,
                    ),
                    width: 100,
                  ),
                  Container(
                    color: Colors.teal,
                    child: FlutterLogo(
                      size: 100,
                    ),
                    width: 100,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    child: FlutterLogo(
                      size: 100,
                    ),
                    width: 100,
                  ),
                ],
              ),

              // body: Container(
              //   width: double.infinity,
              //   color: Colors.amberAccent,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              // Container(
              //   color: Colors.pink,
              //   child: FlutterLogo(
              //     size: 100,
              //   ),
              //   width: 100,
              // ),
              // Container(
              //   color: Colors.black,
              //   child: FlutterLogo(
              //     size: 100,
              //   ),
              //   width: 100,
              // ),
              // Container(
              //   color: Colors.red,
              //   child: FlutterLogo(
              //     size: 100,
              //   ),
              //   width: 100,
              // ),
              // Container(
              //   color: Colors.blue,
              //   child: FlutterLogo(
              //     size: 100,
              //   ),
              //   width: 100,
              // ),

              // Container(
              //   color: Colors.pink,
              //   height: 100,
              //   width: 100,
              // ),
              // Container(
              //   color: Colors.blue,
              //   height: 100,
              //   width: 100,
              // ),
              // Container(
              //   color: Colors.purple,
              //   height: 100,
              //   width: 100,
              // ),
              // Container(
              //   color: Colors.green,
              //   height: 100,
              //   width: 100,
              // )
            ],
          ),
        ));
  }
}
