import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/features/common/presentation/widgets/music_my_collection.dart';
import 'package:scatify/shared/base.dart';
import 'package:scatify/shared/const.dart';

/// My Collection Screen
class MyCollectionScreen extends ConsumerStatefulWidget {
  ///
  const MyCollectionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyCollectionScreenState();
}

class _MyCollectionScreenState extends ConsumerState<MyCollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BaseApp.baseApp(
        color: Colors.black,
        body: TabBarView(
          children: [
            MusicCollection(),
          ],
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            bottom: TabBar(
              tabs: [
                Text(
                  'Music',
                  style: TextStyles.primaryInlineText,
                ),
                Text(
                  'Podcast',
                  style: TextStyles.primaryInlineText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
