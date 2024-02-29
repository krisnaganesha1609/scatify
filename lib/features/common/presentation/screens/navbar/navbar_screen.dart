import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:scatify/features/common/presentation/screens/navbar/screen_index.dart';
import 'package:scatify/shared/base.dart';

/// Navigation Bar
class Navbar extends StatefulWidget {
  ///
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late PageController _pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(
      selectedIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuad,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: BaseApp.baseApp(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: ScreenIndex().buildPageView(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Iconify(
                '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="currentColor" d="M20.42 10.18L12.71 2.3a1 1 0 0 0-1.42 0l-7.71 7.89A2 2 0 0 0 3 11.62V20a2 2 0 0 0 1.89 2h14.22A2 2 0 0 0 21 20v-8.38a2.07 2.07 0 0 0-.58-1.44M10 20v-6h4v6Zm9 0h-3v-7a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v7H5v-8.42l7-7.15l7 7.19Z"/></svg>',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="currentColor" d="m20.71 19.29l-3.4-3.39A7.92 7.92 0 0 0 19 11a8 8 0 1 0-8 8a7.92 7.92 0 0 0 4.9-1.69l3.39 3.4a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.42M5 11a6 6 0 1 1 6 6a6 6 0 0 1-6-6"/></svg>',
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 20 20"><path fill="currentColor" d="M17 5.95v10.351c0 .522-.452.771-1 1.16c-.44.313-1-.075-1-.587V6.76c0-.211-.074-.412-.314-.535c-.24-.123-7.738-4.065-7.738-4.065c-.121-.045-.649-.378-1.353-.016c-.669.344-1.033.718-1.126.894l8.18 4.482c.217.114.351.29.351.516v10.802a.67.67 0 0 1-.369.585a.746.746 0 0 1-.333.077a.736.736 0 0 1-.386-.104c-.215-.131-7.774-4.766-8.273-5.067c-.24-.144-.521-.439-.527-.658L3 3.385c0-.198-.023-.547.289-1.032C3.986 1.269 6.418.036 7.649.675l8.999 4.555c.217.112.352.336.352.72"/></svg>',
              ),
              label: 'Your Collection',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          elevation: 5,
          iconSize: 20,
          selectedFontSize: 20,
          unselectedFontSize: 10,
          onTap: onButtonPressed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
