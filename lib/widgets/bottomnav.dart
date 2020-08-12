import 'package:facebookdarkui/screens/Homapage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _bottompages = [
    Homapage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  int _indexofpages = 0;

  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 32,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          MdiIcons.accountGroupOutline,
          size: 32,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          MdiIcons.accountCircleOutline,
          size: 32,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          MdiIcons.bellOutline,
          size: 32,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          MdiIcons.menu,
          size: 32,
        ),
        title: Text(''))
  ];

  @override
  Widget build(BuildContext context) {
    PageController _pgctr = PageController();
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,
        currentIndex: _indexofpages,
        onTap: (index) {
          setState(() {
            _indexofpages = index;
            _pgctr.animateToPage(_indexofpages,
                duration: Duration(milliseconds: 150), curve: Curves.linear);
          });
        },
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
      ),
      body: PageView(
        children: _bottompages,
        onPageChanged: (index) {
          setState(() {
            _indexofpages = index;
          });
        },
        controller: _pgctr,
      ),
    );
  }
}
