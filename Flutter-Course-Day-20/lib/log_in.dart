import 'package:flutter/material.dart';
import 'package:todoo/profile.dart';

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
             
              decoration: InputDecoration(
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
                  filled: true,
                  fillColor: Colors.white),
            ),
            SizedBox(height: 10,),
             TextField(
              onTap: () {
                setState(() {
                  isTap = true;
                });
              },
              onChanged: (String name) {
                setState(() {});
              },
            
              obscureText: true,
              obscuringCharacter: "*",
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  
                  hintStyle:
                      TextStyle(color: isTap ? Colors.red : Colors.purple),
                  labelText: "Your Password",
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