import 'package:flutter/material.dart';

class titleWithDescriptionButtonBox extends StatefulWidget{
  titleWithDescriptionButtonBox({required this.content, required this.title, this. padding});

  final Widget content;
  final String title;
  final double? padding;

  @override
  State<titleWithDescriptionButtonBox> createState() => titleWithDescriptionButtionBoxState();
}

class titleWithDescriptionButtionBoxState extends State<titleWithDescriptionButtonBox>{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(title),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 8.0), child: content),
        ],
      ),
    );
  }
}