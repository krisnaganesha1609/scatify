import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/features/common/presentation/widgets/favorite_genre_cards_search.dart';
import 'package:scatify/features/common/presentation/widgets/search_box_search.dart';
import 'package:scatify/shared/base.dart';
import 'package:scatify/shared/const.dart';

///
class SearchScreen extends ConsumerStatefulWidget {
  ///
  const SearchScreen({super.key});

  ///
  static const String route = 'search';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseApp.baseApp(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    'Search',
                    style: TextStyles.primaryHeading,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(onTap: () {}, child: const SearchBox()),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Favorite genre',
                    style: TextStyles.primarySubheading,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FavoriteGenreCards(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Find More Here',
                    style: TextStyles.primarySubheading,
                  ),
                  const FavoriteGenreCards(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
