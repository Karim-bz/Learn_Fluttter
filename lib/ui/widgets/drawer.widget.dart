import 'package:first_app/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.blue,
                  Colors.transparent,
                ],
              ),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/logo.png"),
                radius: 40,
              ),
            ),
          ),
          ...(GlobalParams.menus).map((item) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    '${item["title"]}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: item["icon"],
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '${item["route"]}');
                  },
                ),
                const Divider(height: 4, color: Colors.red),

              ],
            );
          }),

        ],
      ),
    );
  }
}
