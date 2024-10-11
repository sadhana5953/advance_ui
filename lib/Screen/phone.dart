import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(onPressed: () {
          showCupertinoDialog(context: context, builder: (context) {
            return CupertinoAlertDialog(
              title: Text('Phone ringtone'),
              content: Column(children: [
                Row(
                  children: [
                    CupertinoRadio(value: 'sadhana', groupValue: 'female', onChanged: (value) {
                    },).marginOnly(right: 10),
                    Text('None'),
                  ],
                ),
                Row(
                  children: [
                    CupertinoRadio(value: 'sadhana', groupValue: 'female', onChanged: (value) {
                    },).marginOnly(right: 10),
                    Text('sadhana'),
                  ],
                ).marginOnly(bottom: 10),
                Row(
                  children: [
                    CupertinoRadio(value: 'diksha', groupValue: 'female', onChanged: (value) {
                    },).marginOnly(right: 10),
                    Text('diksha'),
                  ],
                ).marginOnly(bottom: 10),
                Row(
                  children: [
                    CupertinoRadio(value: 'damini', groupValue: 'female', onChanged: (value) {
                    },).marginOnly(right: 10),
                    Text('damini'),
                  ],
                ).marginOnly(bottom: 10),
                Row(
                  children: [
                    CupertinoRadio(value: 'gungun', groupValue: 'female', onChanged: (value) {
                    },).marginOnly(right: 10),
                    Text('gungun'),
                  ],
                ).marginOnly(bottom: 10),
              ],),
              actions: [
                TextButton(onPressed: () {
                  Get.back();
                }, child: Text('Cancle')),
                TextButton(onPressed: () {

                }, child: Text('Ok')),
              ],
            );
          },);
        }, child: Text('checkbox')),
      ),
    );
  }
}
