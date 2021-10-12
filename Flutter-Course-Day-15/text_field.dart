import 'package:flutter/material.dart';
import 'package:sajia/profile.dart';

class TextFieldScreen extends StatefulWidget {
  TextFieldScreen({Key? key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  TextEditingController nameEditingController = TextEditingController();
  int age = 20;

  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal.withOpacity(0.50),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("TextField"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameEditingController,
              onTap: () {
                setState(() {
                  isTap = true;
                });
              },
              onChanged: (String name) {
                setState(() {});
              },
              maxLength: 10,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Enter your name",
                  hintStyle:
                      TextStyle(color: isTap ? Colors.red : Colors.purple),
                  labelText: "Your Name",
                  labelStyle: TextStyle(color: Colors.purple),
                  enabledBorder: OutlineInputBorder(
                      // borderSide: BorderSide.none
                      borderSide: BorderSide(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide.none
                      borderSide: BorderSide(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: isTap ? Colors.red : Colors.purple,
                  ),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white),
            ),
            nameEditingController.text.isNotEmpty
                ? Text(
                    "${nameEditingController.text}",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  )
                : Text("Empty Field"),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (ctx) => ProfileScreen(
                            name: nameEditingController.text,
                            age: age,
                          ));
                  Navigator.push(context, route);
                },
                child: Text("Send"))
          ],
        ),
      ),
    );
  }
}
