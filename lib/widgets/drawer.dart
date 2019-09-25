import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://picsum.photos/id/1005/100/100',
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
          ),
          title: Text(
            'Preferences',
          ),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
          ),
          title: Text(
            'Logoff',
          ),
          onTap: () => {},
        ),
      ],
    );
  }
}
