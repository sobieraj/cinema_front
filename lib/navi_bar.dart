import 'package:cinema_front/page_home.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int _selectedWidget = 0;
  static final List<Widget>_widgetOptions = <Widget>[
    const PageHome(),
    const Text("Search"),
    const Text("Profile")
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedWidget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedWidget],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedWidget,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(255, 36, 36, 36),
        unselectedItemColor: const Color.fromARGB(255, 122, 122, 122),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile")
        ],
      ),
    );
  }
}