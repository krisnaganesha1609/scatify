import 'package:flutter/material.dart';
import 'package:scatify/features/common/presentation/screens/settings/settings_screen.dart';

///
class MyDrawer extends StatelessWidget {
  ///
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // logo
          const DrawerHeader(child: Center()),

          // hoem title
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: ListTile(
              title: const Text('H O M E'),
              leading: const Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),
          //settings

          Padding(
            padding: const EdgeInsets.only(left: 25, top: 0),
            child: ListTile(
              title: const Text('S E T T I N G S'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);

                Future.delayed(const Duration(milliseconds: 1000), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<SettingsScreen>(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
