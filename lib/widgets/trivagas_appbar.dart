import 'package:flutter/material.dart';

class TrivagasAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  TrivagasAppBar({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null
          ? Text(
              title,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            )
          : null,
      backgroundColor: Colors.white,
      elevation: 1,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
