import 'package:flutter/material.dart';
import 'package:sociaworld/main.dart';
import 'package:sociaworld/pages/home_page.dart';
import 'package:sociaworld/pages/profil_page.dart';
import 'package:sociaworld/pages/search_page.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  bool isSearchActive = false;

  List<Widget> screens = [
    AnaSayfa(),
    SearchPage(),
    Profilpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index], // Use the selected index to show the corresponding page
      bottomNavigationBar: BottomBarBubble(
        color: Colors.blueGrey,
        selectedIndex: _index,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.search),
          BottomBarItem(iconData: Icons.person),
          
        ],
        onSelect: (index) {
          setState(() {
            _index = index; // Update the selected index when a bottom bar item is selected
          });
        },
      ),
    );
  }
}



/*
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List pages = [
    AnaSayfa(),
    SearchPage(),
    Profilpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.shifting,//varsayılan olarak max 3 sekme kabul eder. daha fazla sekme için shifting kullan
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'anasayfa',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'arama',
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
*/
