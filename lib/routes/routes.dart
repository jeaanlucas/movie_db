import 'package:flutter/material.dart';
import 'package:movie_db/pages/initial_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => InitialPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => InitialPage());
    }
  }
}