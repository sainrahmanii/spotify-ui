import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_ui/screen/favorite_screen.dart';
import 'package:spotify_ui/screen/home_page.dart';
import 'package:spotify_ui/screen/profile_screen.dart';
import 'package:spotify_ui/screen/settings_screen.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SettingsScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff42C83C),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        unselectedItemColor: const Color(0xff808080),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-home.svg"),
            label: "Home",
            activeIcon: SvgPicture.asset("assets/svgs/active-home.svg"),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-settings.svg"),
            label: "Settings",
            activeIcon: SvgPicture.asset("assets/svgs/active-settings.svg"),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-favorite.svg"),
            label: "Favorite",
            activeIcon: SvgPicture.asset("assets/svgs/active-favorite.svg"),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svgs/icon-profile.svg"),
            label: "Profile",
            activeIcon: SvgPicture.asset("assets/svgs/active-profile.svg"),
          ),
        ],
      ),
    );
  }
}
