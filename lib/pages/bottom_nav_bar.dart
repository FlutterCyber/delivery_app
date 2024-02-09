import 'package:delivery_app/pages/bookmark_page/bookmark_page.dart';
import 'package:delivery_app/pages/home_page/home_page.dart';
import 'package:delivery_app/pages/my_orders_page/my_orders_page.dart';
import 'package:delivery_app/pages/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";

  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: const [
            HomePage(),
            MyOrdersPage(),
            BookmarkPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(IconlyBold.home),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(IconlyBold.document),
            ),
            BottomNavigationBarItem(
              label: "My list",
              icon: Icon(IconlyBold.bookmark),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(IconlyBold.profile),
            ),
          ],
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeIn);
            });
          },
        ));
  }
}
