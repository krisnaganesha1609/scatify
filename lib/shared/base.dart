import 'package:flutter/material.dart';

///
class BaseApp {
  /// Base Of All Application
  static Widget baseApp({
    required Widget body,
    PreferredSizeWidget? appBar,
    Widget? floatingActionButton,
    Widget? drawer,
    BottomNavigationBar? bottomNavigationBar,
    Color color = Colors.white,
  }) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: color,
        appBar: appBar,
        body: Container(
          child: body,
        ),
        drawer: drawer,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
