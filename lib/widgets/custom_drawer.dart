import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "RuralClap",
            textScaler: TextScaler.noScaling,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            overflow: TextOverflow.ellipsis,
          ),
          const ListTile(
            title: Text(
              "Home",
              textScaler: TextScaler.noScaling,
            ),
            leading: Icon(Icons.home),
            style: ListTileStyle.drawer,
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "View Bookings",
              textScaler: TextScaler.noScaling,
            ),
            leading: Icon(Icons.book_online),
            style: ListTileStyle.drawer,
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "My Profile",
              textScaler: TextScaler.noScaling,
            ),
            leading: Icon(Icons.person),
            style: ListTileStyle.drawer,
          ),
          const Divider(),
          const Spacer(),
          const Divider(),
          const ListTile(
            title: Text(
              "Logout",
              textScaler: TextScaler.noScaling,
            ),
            leading: Icon(Icons.logout),
            style: ListTileStyle.drawer,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
