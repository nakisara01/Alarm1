import 'package:alarm1/src/controller/alarm.dart';
import 'package:alarm1/src/ui/alarmList/components/textCard.dart';
import 'package:flutter/material.dart';

import '../../alarmDetail/alarmDetail.dart';
import '../../widgets/switchByPlatform.dart';
import 'alarmCard.dart';

class AlarmListBody extends StatelessWidget {
  final _controller = AlarmController(
      [true, false, false, true, false, true, true, false, false, true]);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 11,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '알람',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ));
        } else {
          return ValueListenableBuilder(
              valueListenable: _controller,
              builder: (BuildContext context, List<bool> value, Widget? child) {
                return AlarmCard(
                  isSwitched: value[index - 1],
                  onChanged: (value) => _controller.switching(
                      index: index - 1, isSwitched: value),
                );
              });
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
