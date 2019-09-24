import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie DB',
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        backgroundColor: Colors.white,
      ),
    );
  }
}
