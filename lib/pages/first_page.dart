import "package:flutter/material.dart";
import "package:full_flutter_beginner/pages/home_page.dart";
import "package:full_flutter_beginner/pages/profile_page.dart";
import "package:full_flutter_beginner/pages/settings_page.dart";

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current paage to display
  int selected_index = 0;

  // This method updates the new selected index
  void navigateBottomBar(int index) {
    setState(() {
      selected_index = index;
    });
  }

  final List pages = [
    // homepage
    HomePage(),
    // profilepage
    ProfilePage(),
    // Settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: pages[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: navigateBottomBar,
        items: [
          // Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          // profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
