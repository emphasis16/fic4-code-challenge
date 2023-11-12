import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Drawer'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  accountName: const Text(
                    'Farrelino',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: const Text(
                    'farrelino.works@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
