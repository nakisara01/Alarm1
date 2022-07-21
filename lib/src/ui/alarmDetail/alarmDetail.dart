import 'package:alarm1/src/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AlarmDetailPage extends StatelessWidget {
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
        body: Column(
          children: [
            Container(
                height: size.height * 0.25,
                child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    onDateTimeChanged: (DateTime value) {})),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  child: Row(
                    children: [
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('반복'),
                      ),),
                          Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text('안 함 >'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text('달력 설정')
          ],
        ));
  }
}
