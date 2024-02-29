import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:scatify/features/common/presentation/widgets/recent_playlist_home.dart';
import 'package:scatify/features/common/presentation/widgets/recommended_home.dart';
import 'package:scatify/shared/base.dart';
import 'package:scatify/shared/const.dart';

///
class HomeScreen extends ConsumerStatefulWidget {
  ///
  const HomeScreen({super.key});

  ///
  static const String route = 'home';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseApp.baseApp(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.black, Colors.black],
            begin: Alignment.topCenter,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good Evening',
                        style: TextStyles.primaryHeading,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Iconify(
                          '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 8 8"><path fill="currentColor" d="M3.5 0L3 1.19c-.1.03-.19.08-.28.13L1.53.82l-.72.72l.5 1.19c-.05.1-.09.18-.13.28l-1.19.5v1l1.19.5c.04.1.08.18.13.28l-.5 1.19l.72.72l1.19-.5c.09.04.18.09.28.13l.5 1.19h1L5 6.83c.09-.04.19-.08.28-.13l1.19.5l.72-.72l-.5-1.19c.04-.09.09-.19.13-.28l1.19-.5v-1l-1.19-.5c-.03-.09-.08-.19-.13-.28l.5-1.19l-.72-.72l-1.19.5c-.09-.04-.19-.09-.28-.13L4.5 0zM4 2.5c.83 0 1.5.67 1.5 1.5S4.83 5.5 4 5.5S2.5 4.83 2.5 4S3.17 2.5 4 2.5"/></svg>',
                        ),
                      ),
                    ],
                  ),
                ),
                const RecentPlaylistHome(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Recommended by Me! :)',
                  style: TextStyles.primaryHeading,
                ),
                const SizedBox(
                  height: 21,
                ),
                const RecommendedHome(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Recently Played by Me! :)',
                  style: TextStyles.primaryHeading,
                ),
                const SizedBox(
                  height: 21,
                ),
                const RecommendedHome(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Try Me! :)',
                  style: TextStyles.primaryHeading,
                ),
                const SizedBox(
                  height: 21,
                ),
                const RecommendedHome(),
              ],
            ),
          ],
        ),
      ),
      color: Theme.of(context).colorScheme.background,
    );
  }
}
