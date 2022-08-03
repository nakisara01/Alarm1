import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class titleDescriptionBox extends StatelessWidget {
  final Widget content;
  final Widget title;

  titleDescriptionBox({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: title,
        ),
        content
      ],
    );
  }
}
//1. 왼쪽 끝은 제목 오른쪽 끝은 내용
//2. 내용에는 텍스트 버튼 등 위젯이라면 무엇이든 자유롭게 들어올 수 있다.
//3. 이 위젯은 클릭이 되면 안된다.
//4. Padding을 선택해서 넣을 수 있다.
