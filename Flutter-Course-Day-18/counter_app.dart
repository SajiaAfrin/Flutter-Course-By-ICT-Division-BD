import 'package:demo_project/contact.dart';
import 'package:flutter/material.dart';

class CounterAppScreen extends StatelessWidget {
  const CounterAppScreen({Key? key}) : super(key: key);

  _showAlertDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("This is tittle"),
            content: Text("This body for alert dialog"),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: (index) {
                if (index == 1) {
                  Route route =
                      MaterialPageRoute(builder: (index) => ContactScreen());
                  Navigator.push(context, route);
                } else if (index == 2) {
                  print("I Love Me");
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text("Data 1"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Data 2"),
                    value: 2,
                  ),
                ];
              }),
        ],
      ),
      body: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        hoverColor: Colors.yellow,
        elevation: 30,
        tooltip: "Click Me",
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(
            color: Colors.lightBlue,
            width: 2,
          ),
        ),
        onPressed: () {
          _showAlertDialog(context);
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.black,
      //   hoverColor: Colors.purple,
      //   onPressed: () {
      //     _showAlertDialog(context);
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
