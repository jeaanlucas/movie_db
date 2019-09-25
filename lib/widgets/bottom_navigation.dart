import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';

class CustomBottomBarNavigation extends StatefulWidget {
  @override
  _CustomBottomBarNavigationState createState() => _CustomBottomBarNavigationState();
}

class _CustomBottomBarNavigationState extends State<CustomBottomBarNavigation> {
  GlobalKey bottomNavigationKey = GlobalKey();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return CircleBottomNavigation(
      key: bottomNavigationKey,
      initialSelection: currentPage,
      inactiveIconColor: Colors.grey,
      barHeight: 38,
      arcHeight: 10,
//      arcWidth: 80,
      circleSize: 30,
      tabs: [
        TabData(
          icon: Icons.home,
          iconSize: 17,
          title: 'Home',
          fontSize: 11.0,
//          onClick: () => Navigator.pushNamed(context, '/'),
        ),
        TabData(
          icon: Icons.search,
          iconSize: 17,
          title: 'Search',
          fontSize: 11.0,
//          onClick: () => Navigator.pushNamed(context, '/search'),
        ),
        TabData(
          icon: Icons.favorite,
          iconSize: 17,
          title: 'Favorites',
          fontSize: 11.0,
//          onClick: () => Navigator.pushNamed(context, '/favorites'),
        ),
        TabData(
          icon: Icons.account_box,
          iconSize: 17,
          title: 'My account',
          fontSize: 11.0,
//          onClick: () => Navigator.pushNamed(context, '/account'),
        ),
      ],
      onTabChangedListener: (index) {
        setState(() {
          currentPage = index;
        });
      },
    );
  }
}
