import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:landinastyle/screens/Profile/profile_view.dart';
import 'package:landinastyle/screens/Shopping/shopping_view.dart';
import 'package:landinastyle/screens/Article/article_view.dart';
import 'package:landinastyle/screens/Home/home_view.dart';
import 'package:landinastyle/screens/Like/like_view.dart';
import 'package:landinastyle/screens/Explore/search_view.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchView(),
    ShoppingView(),
    ArticleView(),
    LikeView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 3,
            activeColor: Colors.black,
            iconSize: 24,
            textSize: 10,
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              GButton(
                icon: Ionicons.cube_outline,
              ),
              GButton(
                icon: Ionicons.search_outline,
              ),
              GButton(
                icon: Ionicons.bag_outline,
              ),
              GButton(
                icon: Ionicons.albums_outline,
              ),
              GButton(
                icon: Ionicons.heart_outline,
              ),
              GButton(
                icon: Ionicons.person_outline,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(
                () {
                  _selectedIndex = index;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
