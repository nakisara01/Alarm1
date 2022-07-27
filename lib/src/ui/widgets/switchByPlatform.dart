import 'dart:io';

import 'package:alarm1/src/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SwitchByPlatForm extends StatefulWidget {
  SwitchByPlatForm({required this.isSwitched, required this.onChanged});

  bool isSwitched;
  Function(bool) onChanged;

  @override
  SwitchByPlatFormState createState() => SwitchByPlatFormState();
}

class SwitchByPlatFormState extends State<SwitchByPlatForm> {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSwitch(
      value: widget.isSwitched,
        onChanged:  widget.onChanged,
      activeColor: Colors.green
    )
        : Switch(
        value: widget.isSwitched,
        onChanged: widget.onChanged,
        activeColor: Colors.green,
        activeTrackColor: Colors.lightGreenAccent);
  }
}