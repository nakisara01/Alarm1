import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  BaseAppBar({this.leading, this.title, this.actions});

  Widget? leading, title;
  List<Widget>? actions;

  static final AppBar _appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: leading,
        title: title,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_appBar.preferredSize.height);
}
