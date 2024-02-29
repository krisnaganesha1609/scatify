import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:scatify/shared/const.dart';

/// Search Box
class SearchBox extends ConsumerStatefulWidget {
  ///
  const SearchBox({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchBoxState();
}

class _SearchBoxState extends ConsumerState<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(children: [
        const SizedBox(
          width: 10,
        ),
        const Iconify(''),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Search your desired song',
          style: TextStyles.primaryParagraph,
        ),
      ]),
    );
  }
}
