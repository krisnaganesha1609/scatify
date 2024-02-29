import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/features/common/presentation/screens/my_collection/music_collection_screen_index.dart';
import 'package:scatify/shared/base.dart';
import 'package:scatify/shared/const.dart';

///
class MusicCollection extends ConsumerStatefulWidget {
  ///
  const MusicCollection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MusicCollectionState();
}

class _MusicCollectionState extends ConsumerState<MusicCollection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: BaseApp.baseApp(
        body:
            const TabBarView(children: MusicCollectionScreenIndex.buildTabView),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // width: MediaQuery.of(context).size.width / 1.3,
                  child: TabBar(
                    tabs: [
                      Text(
                        'Playlists',
                        style: TextStyles.primaryParagraph,
                      ),
                      Text(
                        'Artists',
                        style: TextStyles.primaryParagraph,
                      ),
                      Text(
                        'Albums',
                        style: TextStyles.primaryParagraph,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
