import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:coal_transport_tracker/pages/homepage/hompage_subpages/dashboard.dart';
import 'package:coal_transport_tracker/pages/homepage/hompage_subpages/maps.dart';
import 'package:coal_transport_tracker/pages/homepage/hompage_subpages/profile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget> [
    const MapsPage(),
    const Dashboard(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
              color: Colors.black,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 16.0,
                  ),
                  child: GNav(
                      backgroundColor: Colors.black,
                      color: Colors.white,
                      activeColor: Colors.white,
                      tabBackgroundColor: Colors.grey.shade800,
                      gap: 8,
                      padding: const EdgeInsets.all(16),
                      tabs: const [
                        GButton(
                          icon: LineIcons.alternateMapMarked,
                          text: "Maps",
                        ),
                        GButton(
                          icon: Icons.dashboard,
                          text: "Dashboard",
                        ),
                        GButton(
                          icon: Icons.person,
                          text: "Profile",
                        ),
                      ],
                      selectedIndex: _selectedIndex,
                      onTabChange: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });}
                  ),
              ),
          ),
        ),
      )
    );
  }
}
