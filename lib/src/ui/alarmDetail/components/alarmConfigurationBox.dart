import 'package:alarm1/src/ui/widgets/TextTitleWithDescriptionButtonBox.dart';
import 'package:alarm1/src/ui/widgets/switchByPlatform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/color.dart';
import '../../../constants/padding.dart';

class alarmConfigurationBox extends StatelessWidget {
  alarmConfigurationBox({required this.isSwitched, required this.onChanged});

  bool isSwitched = false;
  Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding)),
              color: IOS_SYSTEM_GRAY[2]),
          margin: EdgeInsets.all(13),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(4.0)),
                TextTitleWithDescriptionButtonBox(
                    title: Text(
                      "반복",
                      style: TextStyle(fontSize: 17.0),
                    ),
                    content: Text('안 함>')),
                Padding(padding: const EdgeInsets.all(18.0)),
                TextTitleWithDescriptionButtonBox(
                    title: Text(
                      "레이블",
                      style: TextStyle(fontSize: 17.0),
                    ), content: Text('알람>')),
                Padding(padding: const EdgeInsets.all(18.0)),
                TextTitleWithDescriptionButtonBox(
                    title: Text(
                      "사운드",
                      style: TextStyle(fontSize: 17.0),
                    ), content: Text('개 짖는 소리')),
                Padding(padding: const EdgeInsets.all(18.0)),
                TextTitleWithDescriptionButtonBox(
                    title: Text(
                      "다시 알림",
                      style: TextStyle(fontSize: 17.0),
                    ),
                    content: SwitchByPlatForm(
                        isSwitched: isSwitched, onChanged: onChanged))
              ],
            ),
          ),
        ),
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
      ],
    );
  }
}
