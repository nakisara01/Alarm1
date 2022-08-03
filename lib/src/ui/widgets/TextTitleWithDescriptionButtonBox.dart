import 'package:alarm1/src/constants/color.dart';
import 'package:alarm1/src/ui/widgets/titleWithDescriptionBox.dart';
import 'package:flutter/material.dart';

class TextTitleWithDescriptionButtonBox extends StatefulWidget {
  TextTitleWithDescriptionButtonBox(
      {required this.title, required this.content});

  final Widget content;
  final Text title;

  @override
  State<TextTitleWithDescriptionButtonBox> createState() =>
      titleWithDescriptionButtionBoxState();
}

class titleWithDescriptionButtionBoxState
    extends State<TextTitleWithDescriptionButtonBox> {
  bool isOnTap = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (TapDownDetails details) => setState(()=>isOnTap = true),
        onTapUp: (TapUpDetails details) => setState(()=>isOnTap = false),
        child: Container(
            color: isOnTap ? Color(0x21FFFFFF) : IOS_SYSTEM_GRAY[2],
            child: titleDescriptionBox(
                title: widget.title, content: widget.content)));
  }
}
