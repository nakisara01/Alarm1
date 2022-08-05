import 'package:alarm1/src/constants/color.dart';
import 'package:alarm1/src/constants/padding.dart';
import 'package:alarm1/src/ui/widgets/TextTitleWithDescriptionButtonBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alarm1/src/ui/alarmDetail/components/body.dart';

import '../widgets/switchByPlatform.dart';

class AlarmDetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            leading: TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                '취소',
                style: TextStyle(color: IOS_ORANGE, fontSize: 18),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '저장',
                  style: TextStyle(color: IOS_ORANGE, fontSize: 18),
                ),
              ),
            ],
            title: Text(
              '알람 편집',
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        //바디 부분
        body: AlarmDetailBody()
        );
  }
}
