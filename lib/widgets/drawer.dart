import 'package:flutter/material.dart';

class NewDrawer extends StatelessWidget {
  const NewDrawer({Key? key}) : super(key: key);
  final imageUrl =
      'https://lh3.googleusercontent.com/ogw/ADea4I4-VMRHfpkRm5s94argXD-n8vUKxUcE-Kq6wLsYuQ=s83-c-mo';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountEmail: Text("sumitkumardash1999@gmail.com"),
              accountName: Text("Sumit Dash"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              margin: EdgeInsets.zero,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.details_outlined,
              color: Colors.white,
            ),
            title: Text(
              "About",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.contacts_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Contact Us",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
