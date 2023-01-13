import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserDrawer extends StatefulWidget {
  const UserDrawer({Key? key}) : super(key: key);

  @override
  State<UserDrawer> createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Allmity App'), accountEmail: Text('Made With 🧡 in Manipal'),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage(
                  'https://images.indianexpress.com/2022/05/Best-stargazing-apps-2022-featured.jpg')
              )
            ),
          ),
          Tile(icon: null, text: 'Accounts'),
          Tile(icon: Icon(Icons.person),text: 'Sign in',),
          Tile(icon: Icon(Icons.group),text: 'Allmity for groups',),
          Divider(),
          Tile(icon: null,text: 'App and developers',),
          Tile(icon: Icon(Icons.share), text: 'Share this app'),
          Tile(icon: Icon(Icons.star), text: 'Rate this app'),
          Tile(icon: Icon(Icons.bug_report), text: 'Report a bug'),
          Tile(icon: Icon(Icons.error), text: 'About Allmity app',),
          Tile(icon: Icon(Icons.privacy_tip), text: 'Privacy Policy'),
          Tile(icon: null, text: 'Connect with us'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.email),
              Icon(FontAwesomeIcons.instagram),
              Icon(FontAwesomeIcons.twitter),
              Icon(FontAwesomeIcons.youtube)

            ],
          )

        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {

  final Icon? icon;
  final String text;
  const Tile({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(text),
    );
  }
}
