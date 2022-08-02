import 'package:alarm1/src/constants/color.dart';
import 'package:flutter/material.dart';

class titleWithDescriptionButtonBox extends StatefulWidget{
  titleWithDescriptionButtonBox({required this.title, required this.content, this. padding});

  Widget content;
  String title;
  double? padding;

  @override
  State<titleWithDescriptionButtonBox> createState() => titleWithDescriptionButtionBoxState();
}

class titleWithDescriptionButtionBoxState extends State<titleWithDescriptionButtonBox>{

  @override
  Widget build(BuildContext context) {

    //TODO: 변수설정 다시 해서 padding, title, content 다시 쓸 수 있게 하기
    return
      InkWell(
        onTap: () {},
        splashColor: IOS_SYSTEM_GRAY[1],
        child: Padding(
          padding: EdgeInsets.all(widget.padding!),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(widget.title),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 8.0), child: widget.content),
            ],
          ),
        ),
      );
  }
}