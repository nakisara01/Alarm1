import 'package:alarm1/src/constants/color.dart';
import 'package:alarm1/src/ui/widgets/switchByPlatform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/body.dart';
import 'components/textCard.dart';

class AlarmListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        // TODO: 버튼 여백 넣기
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: TextButton(
            onPressed: () {},
            child: Text(
              '편집',
              style: TextStyle(color: IOS_ORANGE, fontSize: 18),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: IOS_ORANGE,
                ))
          ],
        ),
        // TODO: 스크롤이 가능하도록 만들기; why? 스크롤이 불가능하면 Overflow 문제가 발생한다.
        body: AlarmListBody());
  }
}
