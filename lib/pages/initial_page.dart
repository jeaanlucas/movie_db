import 'package:flutter/material.dart';
import 'package:movie_db/widgets/app_bar.dart';
import 'package:movie_db/widgets/bottom_navigation.dart';
import 'package:movie_db/widgets/drawer.dart';

class InitialPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        title: 'Movie DB',
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: Center(
          child: Text(
            'Movie DB',
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBarNavigation(),
    );
  }
}
