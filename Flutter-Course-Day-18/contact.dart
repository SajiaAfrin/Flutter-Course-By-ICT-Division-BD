import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contact"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/background.jpg"),
                Container(
                  padding: EdgeInsets.only(left: 160, top: 40),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/poor_man.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/poor_man.png"),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/poor_man.png"),
                      ),
                      Text(
                        "Abdulla Al Numan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "mahinnuman@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "SourceCodePro",
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 50)),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.music_note),
              title: Text("Music"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.music_video),
              title: Text("Music_vedio"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.movie),
              title: Text("movie"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.manage_accounts),
              title: Text("Manage_Account"),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.black87.withOpacity(0.9),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.alarm_add),
              title: Text("Alarm"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.search),
              title: Text("search"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.audiotrack_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Audiotrack")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 1,
            color: Colors.teal,
            height: 0,
          );
        },
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.phone),
              ),
              title: Text("+88 01640304152"),
              subtitle: Text("Flutter Developer"),
              trailing: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.edit
                        // color: Colors.black,
                        ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(Icons.delete
                        // color: Colors.black,
                        ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
