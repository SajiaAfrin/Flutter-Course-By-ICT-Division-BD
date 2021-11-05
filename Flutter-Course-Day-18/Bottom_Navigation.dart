import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  List screens = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.tealAccent,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.lightGreen,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.lightGreenAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scatter_plot_rounded),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.tealAccent,
        iconSize: 30,
        selectedFontSize: 30,
        unselectedFontSize: 20,
        elevation: 200,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
