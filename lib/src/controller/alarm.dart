import 'package:flutter/material.dart';

class AlarmController extends ValueNotifier<List<bool>>{
  AlarmController(super.value); //super.value == List<bool>

  void switching({required int index, required bool isSwitched}) {
    value[index] = isSwitched;
    notifyListeners();
  }
}