import 'package:flutter/material.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      child: ListView(
        children: [
          const DrawerHeader(
            child: CircleAvatar(
                backgroundImage: NetworkImage('https://scontent.fisb5-1.fna.fbcdn.net/v/t39.30808-6/299960977_102531995915122_4653635820404764695_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFX8nkxn9FYwPIq_yme-ywXHdMDt3iPGcwd0wO3eI8ZzBo0enTYZGkOiL21m0H8sDbS8YmvKE7r6imYUOxnrcPb&_nc_ohc=7dPlaBNFTZwQ7kNvgGCFaBr&_nc_ht=scontent.fisb5-1.fna&_nc_gid=Ar0O4JFhbxsbyhx9rEYyi-s&oh=00_AYDJhaWqKxvz5IhYTyIlMj9LZxFnGZCtPOZaxZyi4PowMw&oe=66FC5210')
            ),
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
      leading: Icon(icons , color: Colors.white,),
      title: Text(
        title,
          style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
