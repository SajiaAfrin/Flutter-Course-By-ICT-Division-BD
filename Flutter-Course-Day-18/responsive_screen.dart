import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  static final String path = "ResponsiveScreen";
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive $width"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Container(
            //         width: MediaQuery.of(context).size.width / 6,
            //         height: MediaQuery.of(context).size.height / 6,
            //         color: Colors.pink,
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width / 6,
            //         height: MediaQuery.of(context).size.height / 6,
            //         color: Colors.teal,
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width / 6,
            //         height: MediaQuery.of(context).size.height / 6,
            //         color: Colors.indigo,
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width / 6,
            //         height: MediaQuery.of(context).size.height / 6,
            //         color: Colors.green,
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width / 6,
            //         height: MediaQuery.of(context).size.height / 6,
            //         color: Colors.purple,
            //       ),
            //       Container(
            //         width: MediaQuery.of(context).size.width / 6,
            //         height: MediaQuery.of(context).size.height / 6,
            //         color: Colors.yellow,
            //       ),
            //     ],
            //   ),
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 3,
            //       child: Container(
            //         width: 200,
            //         height: 150,
            //         color: Colors.blue,
            //       ),
            //     ),
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //         width: 200,
            //         height: 150,
            //         color: Colors.yellow,
            //       ),
            //     ),
            //     Expanded(
            //       flex: 3,
            //       child: Container(
            //         width: 200,
            //         height: 150,
            //         color: Colors.purple,
            //       ),
            //     ),
            //     Expanded(
            //       flex: 4,
            //       child: Container(
            //         width: 200,
            //         height: 150,
            //         color: Colors.indigo,
            //       ),
            //     ),
            //     Expanded(
            //       flex: 4,
            //       child: Container(
            //         width: 200,
            //         height: 150,
            //         color: Colors.pink,
            //       ),
            //     ),
            //   ],
            // ),
            // Wrap(
            //   children: [
            //     Container(
            //       width: 150,
            //       height: 150,
            //       color: Colors.orange,
            //     ),
            //     Container(
            //       width: 150,
            //       height: 150,
            //       color: Colors.blue,
            //     ),
            //     Container(
            //       width: 150,
            //       height: 150,
            //       color: Colors.teal,
            //     ),
            //     Container(
            //       width: 150,
            //       height: 150,
            //       color: Colors.orange,
            //     ),
            //     Container(
            //       width: 150,
            //       height: 150,
            //       color: Colors.blue,
            //     ),
            //   ],
            // ),
            width < 380
                ? Column(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.teal,
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.green,
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.purple,
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          color: Colors.teal,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),

            Container(
              width: 200,
              height: 150,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.black,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.orange,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.purple,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.pink,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.teal,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.indigo,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
