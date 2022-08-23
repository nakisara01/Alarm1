import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  BaseAppBar({this.leftWidget, this.middleText, this.rightWidgets});

  Widget? leftWidget, middleText;
  List<Widget>? rightWidgets;

  static final AppBar _appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: leftWidget,
        title: middleText,
        actions: rightWidgets);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_appBar.preferredSize.height);
}
