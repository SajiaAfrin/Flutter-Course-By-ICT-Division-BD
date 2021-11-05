import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  static final String path = "Account";
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Account Settings",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Icon(
                Icons.light_mode,
                size: 50,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text('''Update your settings like profile edit change 
                  password etc.'''),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.person,
              size: 40,
            ),
            title: Text(
              "Edit Profile",
              style: Theme.of(context).textTheme.headline1,
            ),
            subtitle: Text("Change your account information"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.lock,
              size: 40,
            ),
            title: Text(
              "Change Password",
              style: Theme.of(context).textTheme.headline1,
            ),
            subtitle: Text("change your password"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.share,
              size: 40,
            ),
            title: Text(
              "Share to Friend",
              style: Theme.of(context).textTheme.headline1,
            ),
            subtitle: Text("get \$15  for reffering friend"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.logout_outlined,
              size: 40,
            ),
            title: Text(
              "Logout",
              style: Theme.of(context).textTheme.headline1,
            ),
            subtitle: Text("logout and try different login"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
