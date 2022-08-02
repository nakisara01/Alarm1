import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class titleDescriptionBox extends StatelessWidget {
  final Widget content;
  final String title;
  final double? padding;

  titleDescriptionBox(
      {required this.title, required this.content, this.padding});

  @override
  Widget build(BuildContext context) {
    bool isPaddingNull = padding == null ? true : false;

    return isPaddingNull
        ? Row(
            children: [
              Expanded(
                child: Text(title),
              ),
              content,
            ],
          )
        : Padding(
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

//1. 왼쪽 끝은 제목 오른쪽 끝은 내용
//2. 내용에는 텍스트 버튼 등 위젯이라면 무엇이든 자유롭게 들어올 수 있다.
//3. 이 위젯은 클릭이 되면 안된다.
//4. Padding을 선택해서 넣을 수 있다.
