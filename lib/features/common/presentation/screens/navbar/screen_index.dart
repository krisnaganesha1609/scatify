import 'package:flutter/material.dart';
import 'package:scatify/features/common/presentation/screens/home/home_screen.dart';
import 'package:scatify/features/common/presentation/screens/my_collection/my_collection_screen.dart';
import 'package:scatify/features/common/presentation/screens/search/search_screen.dart';

/// Screen Index for Navbar
class ScreenIndex {
  ///
  List<Widget> buildPageView() {
    return const [HomeScreen(), SearchScreen(), MyCollectionScreen()];
  }
}
