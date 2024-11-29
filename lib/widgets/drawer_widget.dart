import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
          child: Image.asset(
            'lib/assets/no_bg_gdg.png',
            width: double.infinity,
            height: 120,
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Chat room'),
                leading: const Icon(Icons.chat),
                onTap: () {},
                // style: ListTileStyle.drawer,
              ),
              ListTile(
                title: const Text('Contact Us'),
                leading: const Icon(Icons.support),
                onTap: () {},
                // style: ListTileStyle.drawer,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
