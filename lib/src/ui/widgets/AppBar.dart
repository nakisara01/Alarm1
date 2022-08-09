import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget{
  AppBarWidget({required this.leftWidget, required this.middleText, required this.rightWidget});

  Widget leftWidget, middleText, rightWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: leftWidget,
      title: middleText,
      actions: [rightWidget]
    );
  }
}