import 'package:demo_project/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenOne extends StatelessWidget {
  static final String path = "ScreenOne";
  final String name = "Mehedi";
  final int age = 52;

  Future launchURL(String url) async {
    if (await canLaunch(url)) {
      return launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  Future launchEmail(String email, String body, String subject) async {
    if (await canLaunch("mailto:$email?subject=$subject&body=$body")) {
      return launch("mailto:$email?subject=$subject&body=$body");
    } else {
      throw "Could not launch $email";
    }
  }

  Future launchPhone(String phone) async {
    if (await canLaunch('tel:$phone')) {
      return launch('tel:$phone');
    } else {
      throw "Could not launch $phone";
    }
  }

  Future launchSMS(String sms) async {
    if (await canLaunch('sms:$sms')) {
      return launch('sms:$sms');
    } else {
      throw "Could not launch $sms";
    }
  }

  List phone = ["888", "99", "88"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The quick brown fox jumps over the lazy dog",
                style: Theme.of(context).textTheme.bodyText1),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, ScreenTwo.path, arguments: [name, age]);
                  Navigator.pushNamed(context, ScreenTwo.path,
                      arguments: {"name": name, "age": age});
                },
                child: Text("Screen One")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          // launchURL("https://flutter.dev/");
          // launchEmail("sajia@gmail.com", " body", " subject");
          launchPhone("phone[0]");
          launchSMS("whats up");
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
