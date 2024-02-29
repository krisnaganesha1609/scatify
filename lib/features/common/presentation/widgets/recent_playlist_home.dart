import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/const.dart';

///
class RecentPlaylistHome extends ConsumerStatefulWidget {
  ///
  const RecentPlaylistHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecentPlaylistHomeState();
}

class _RecentPlaylistHomeState extends ConsumerState<RecentPlaylistHome> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      children: [buildCards('', 'Empowered Songs'), buildCards('', 'phonk')],
    );
  }
}

/// Recent Cards Widget
Card buildCards(String img, String text) {
  return Card(
    color: Colors.grey[800],
    child: SizedBox(
      width: 170,
      child: Row(
        children: [
          Image(
            image: CachedNetworkImageProvider(img),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 17, 25, 17),
            child: Text(
              text,
              style: TextStyles.primarySubheading,
            ),
          ),
        ],
      ),
    ),
  );
}
