import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  CustomAppBar({
    @required this.title,
    this.height = 66.0,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final List<Color> colors = [
      Colors.black,
      Color.fromRGBO(58, 66, 86, 1.0),
    ];

    return Container(
      padding: EdgeInsets.only(
        top: statusBarHeight,
      ),
      height: statusBarHeight + height,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 36.0,
          ),
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.5, 0.0),
          stops: [
            0.0,
            0.5,
          ],
          tileMode: TileMode.clamp,
        )
      ),
    );
  }
}
