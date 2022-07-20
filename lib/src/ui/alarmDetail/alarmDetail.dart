import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                '취소',
                style: TextStyle(color: Colors.orange, fontSize: 18),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '저장',
                  style: TextStyle(color: Colors.orange, fontSize: 18),
                ),
              ),
            ],
            title: Text(
              '알람 편집',
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        body: Column(
          children: [
            Container(
                height: size.height * 0.25,
                child: CupertinoDatePicker(
                    onDateTimeChanged: (DateTime value) {})),
            Text('달력')
          ],
        ));
  }
}
