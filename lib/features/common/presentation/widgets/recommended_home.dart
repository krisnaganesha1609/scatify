import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/const.dart';

///
class RecommendedHome extends ConsumerStatefulWidget {
  ///
  const RecommendedHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecommendedHomeState();
}

class _RecommendedHomeState extends ConsumerState<RecommendedHome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return const Row(
            children: [
              RecommendedCard(
                img: '',
                title: '',
                subtitle: '',
              ),
              SizedBox(
                width: 13,
              ),
            ],
          );
        },
      ),
    );
  }
}

/// Recommended Card
class RecommendedCard extends StatelessWidget {
  ///
  const RecommendedCard({
    required this.img,
    required this.title,
    required this.subtitle,
    super.key,
  });

  ///
  final String img;

  ///
  final String title;

  ///
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: 130,
          height: 130,
          image: CachedNetworkImageProvider(img),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyles.primarySubheading,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: TextStyles.primaryInlineText,
        ),
      ],
    );
  }
}
