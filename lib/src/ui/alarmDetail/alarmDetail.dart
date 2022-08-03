import 'package:alarm1/src/constants/color.dart';
import 'package:alarm1/src/constants/padding.dart';
import 'package:alarm1/src/ui/widgets/titleWithDescriptionBox.dart';
import 'package:alarm1/src/ui/widgets/TextTitleWithDescriptionButtonBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/switchByPlatform.dart';

class AlarmDetailPage extends StatelessWidget {
  bool isSwitched = false;
  late Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        body: Column(children: [
          Container(
              height: size.height * 0.25,
              child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  onDateTimeChanged: (DateTime value) {})),
          //Detail페이지의 Datepicker아래 메뉴 박스
          Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(kDefaultPadding)),
                  color: IOS_SYSTEM_GRAY[2]),
              child: Column(
                children: [
                  TextTitleWithDescriptionButtonBox(
                    title: Text('반복'),
                    content: Text('안함 >'),
                  ),
                  TextTitleWithDescriptionButtonBox(
                    title: Text('레이블'),
                    content: Text('알람 >'),
                  ),
                  TextTitleWithDescriptionButtonBox(
                    title: Text('사운드'),
                    content: Text('경보기 >'),
                  ),
                  TextTitleWithDescriptionButtonBox(
                    title: Text('다시 알림'),
                    content: SwitchByPlatForm(
                      isSwitched: isSwitched,
                      onChanged: (bool) {},
                    ),
                  ),
                  TextTitleWithDescriptionButtonBox(
                    title: Text('test2'),
                    content: SwitchByPlatForm(
                      isSwitched: isSwitched,
                      onChanged: (bool) {},
                    ),
                  )
                ],
              )),
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(IOS_SYSTEM_GRAY[2])),
            onPressed: () {},
            child: Text(
              '알람 삭제',
              style: TextStyle(color: IOS_RED, fontSize: 12),
            ),
          ),
        ]));
  }
}
