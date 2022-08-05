import 'package:alarm1/src/ui/alarmDetail/components/alalrmDatePicker.dart';
import 'package:alarm1/src/ui/alarmDetail/components/alarmConfigurationBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlarmDetailBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        alarmDatePicker(),
        alarmConfigurationBox()
      ],
    );
  }


}