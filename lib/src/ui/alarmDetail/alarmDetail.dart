import 'package:alarm1/src/constants/color.dart';
import 'package:alarm1/src/constants/padding.dart';
import 'package:alarm1/src/ui/alarmDetail/components/appBar.dart';
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
        appBar: AlarmDetailAppBar(), //바디 부분
        body: AlarmDetailBody());
  }
}
