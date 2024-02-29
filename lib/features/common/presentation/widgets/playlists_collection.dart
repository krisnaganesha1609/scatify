import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/const.dart';

///
class PlaylistCollection extends ConsumerStatefulWidget {
  ///
  const PlaylistCollection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlaylistCollectionState();
}

class _PlaylistCollectionState extends ConsumerState<PlaylistCollection> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Image(
            image: CachedNetworkImageProvider(''),
          ),
          title: Text(
            'Empowered Song',
            style: TextStyles.primarySubheading,
          ),
          subtitle: Text(
            '1000 Song',
            style: TextStyles.primaryTransparentText,
          ),
        ),
        ListTile(
          leading: const Image(
            image: CachedNetworkImageProvider(''),
          ),
          title: Text(
            'Empowered Song',
            style: TextStyles.primarySubheading,
          ),
          subtitle: Text(
            '1000 Song',
            style: TextStyles.primaryTransparentText,
          ),
        ),
      ],
    );
  }
}
