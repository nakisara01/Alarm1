import 'package:alarm1/src/ui/widgets/AppBar.dart';
import 'package:flutter/material.dart';

import '../../../constants/color.dart';



class AlarmListAppBar extends StatelessWidget implements PreferredSizeWidget{

  static final AppBar _appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
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
          '알람',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_appBar.preferredSize.height);
}

