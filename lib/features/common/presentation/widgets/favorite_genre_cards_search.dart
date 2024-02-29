import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/const.dart';

class FavoriteGenreCards extends ConsumerStatefulWidget {
  const FavoriteGenreCards({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FavoriteGenreCardsState();
}

class _FavoriteGenreCardsState extends ConsumerState<FavoriteGenreCards> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [GenreCard()],
        ),
      ],
    );
  }
}

///
class GenreCard extends StatelessWidget {
  ///
  const GenreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 90,
        width: 160,
        decoration: const BoxDecoration(color: Colors.purpleAccent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Power',
                  style: TextStyles.primaryParagraph,
                ),
              ],
            ),
            Transform.rotate(
              angle: 0.5,
              child: const Image(image: CachedNetworkImageProvider('')),
            ),
          ],
        ),
      ),
    );
  }
}
