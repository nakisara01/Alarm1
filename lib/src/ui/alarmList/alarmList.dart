import 'package:alarm1/src/constants/color.dart';
import 'package:alarm1/src/ui/alarmList/components/appBar.dart';
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
        appBar: AlarmListAppBar(),
        body: AlarmListBody());
  }
}
