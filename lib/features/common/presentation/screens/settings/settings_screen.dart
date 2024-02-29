import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/base.dart';
import 'package:scatify/shared/const.dart';
import 'package:scatify/utils/theme_provider.dart';

/// Settings Screen
class SettingsScreen extends ConsumerStatefulWidget {
  ///
  const SettingsScreen({super.key});

  ///
  static const String route = 'settings';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseApp.baseApp(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(25),
            child: Row(
              children: [
                Text(
                  'Dark Mode',
                  style: TextStyles.primaryParagraph,
                ),
                Switch.adaptive(
                  value: ref.watch(themeProvider).isDarkMode,
                  onChanged: (value) {
                    value == ref.watch(themeProvider).isDarkMode
                        ? ref.watch(themeProvider).toggleDark()
                        : ref.watch(themeProvider).toggleLight();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('S E T T I N G S'),
      ),
    );
  }
}
