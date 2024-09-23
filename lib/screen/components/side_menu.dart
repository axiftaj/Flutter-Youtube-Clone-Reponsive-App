import 'package:flutter/material.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: FlutterLogo(),
          ),
          DrawerListTile(
            title: "Home",
            icons: Icons.home_outlined,
            press: () {},
          ),
          DrawerListTile(
            title: "Shorts",
            icons: Icons.shortcut_outlined,
            press: () {},
          ),
          DrawerListTile(
            title: "Subscriptions",
            icons: Icons.subscriptions_outlined,
            press: () {},
          ),

        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icons,
    required this.press,
  }) : super(key: key);

  final String title ;
  final IconData icons ;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 20.0,
      leading: Icon(icons),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
