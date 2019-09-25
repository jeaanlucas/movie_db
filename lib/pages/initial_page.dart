import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        child: Center(
          child: Text(
            'Movie DB'
          ),
        ),
      ),
    );
  }
}
