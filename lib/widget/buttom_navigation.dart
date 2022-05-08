import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({Key? key}) : super(key: key);

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/images/email.svg')
                : SvgPicture.asset('assets/images/email.svg'),
            label: 'Ma Parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/images/home.svg')
                : SvgPicture.asset('assets/images/home1.svg'),
            label: 'Ma Parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/images/sent.svg')
                : SvgPicture.asset('assets/images/sent1.svg'),
            label: 'Ma Parcels')
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }
}
