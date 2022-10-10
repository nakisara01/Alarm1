import 'package:alarm1/src/ui/alarmDetail/components/alalrmDatePicker.dart';
import 'package:alarm1/src/ui/alarmDetail/components/alarmConfigurationBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:alarm1/src/controller/alarm.dart';

class AlarmDetailBody extends StatelessWidget {
  final _controller = AlarmController([true]);
  late int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        alarmDatePicker(),
        alarmConfigurationBox(
            isSwitched: false,
            onChanged: (value) =>
                _controller.switching(index: index - 1, isSwitched: value))
      ],
    );
  }
}
