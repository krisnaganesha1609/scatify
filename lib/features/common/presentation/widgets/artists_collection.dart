import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/const.dart';

///
class ArtistCollection extends ConsumerStatefulWidget {
  ///
  const ArtistCollection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ArtistCollectionState();
}

class _ArtistCollectionState extends ConsumerState<ArtistCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Looking anything, eh?',
            style: TextStyles.primaryInlineText,
          ),
        ],
      ),
    );
  }
}
