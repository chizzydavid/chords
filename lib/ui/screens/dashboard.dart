import 'package:my_chords/ui/screens/collections.dart';
import 'package:flutter/material.dart';
import 'package:my_chords/ui/screens/profile.dart';
import 'package:my_chords/ui/screens/discover.dart';

class DashboardScreen extends StatefulWidget {
  @override
  Dashboard createState() => Dashboard();
}

class Dashboard extends State<DashboardScreen> {
  int _selectedTabItem = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _tabItems = [
    DiscoverScreen(),
    CollectionScreen(),
    ProfileScreen()
  ];

  onTabClick(index) {
    setState(() => _selectedTabItem = index);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: _tabItems[_selectedTabItem],
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xfff5f5f5),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:'Discover'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label:'Collection'
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label:'Profile'
        ),
      ],
      currentIndex: _selectedTabItem,
      selectedItemColor: Theme.of(context).accentColor,
      onTap: onTabClick,
    )
  );

  }
}
