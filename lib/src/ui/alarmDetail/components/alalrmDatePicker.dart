import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class alarmDatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.25,
        child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.time,
            onDateTimeChanged: (DateTime value) {}),
      );
  }
}
