import 'package:advance_ui/Controller/controllet.dart';
import 'package:advance_ui/Screen/phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeController());
    String Date='MM/DD/YYYY';
    DatePickerEntryMode? date;
    TextEditingController editingController=TextEditingController(text: Date);
    return Scaffold(
      appBar: AppBar(
        title: Obx(() =>  Text((controller.tabBarButton.value==3)?'Shoping Cart':'HomePage')),
      ),
      body: Obx(
        () =>  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (controller.tabBarButton.value==0)?TextFormField(
              controller: editingController,
              style: TextStyle(color: Colors.grey.shade600),
              decoration:  InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today_outlined,color: Colors.grey.shade600,),
                  onPressed: () {
                    showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime.now(),selectableDayPredicate: (day) {
                      return true;
                    },);
                  },
                ),
                labelText: 'Date',
                labelStyle: TextStyle(color: Colors.green),
                helperText: 'MM/DD/YYYY',
                helperStyle: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.green),borderRadius: BorderRadius.circular(15),),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.green),borderRadius: BorderRadius.circular(15),),
              ),
            ).marginSymmetric(horizontal: 20,vertical: 10):
            (controller.tabBarButton.value==1)?FilledButton(onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Padding(
                    padding:  EdgeInsets.only(right: 90),
                    child:  Text('Phone Ringtone',style:   TextStyle(fontSize: 16),),
                  ),
                  content: Material(
                    color: Colors.transparent,
                    child: SizedBox(
                      height: 200,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            RadioListTile(
                                value: 'value-1',
                                title: Text(
                                  'Option-1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value!;
                                  });
                                }),
                            RadioListTile(
                                value: 'value-2',
                                title: Text(
                                  'Option-2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value!;
                                  });
                                }),
                            RadioListTile(
                                value: 'value-3',
                                title: Text(
                                  'Option-3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value!;
                                  });
                                }),
                            RadioListTile(
                                value: 'value-4',
                                title: Text(
                                  'Option-4',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value!;
                                  });
                                }),
                            RadioListTile(
                                value: 'value-5',
                                title: Text(
                                  'Option-5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value!;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel',style: TextStyle(color: Color(0xff386927))),
                    ),
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK',style: TextStyle(color: Color(0xff386927)),),
                    ),
                  ],
                ),
              );

            }, child: Text('Change Phone Ringtone')):
            (controller.tabBarButton.value==2)? FilledButton(onPressed: () {
              showTimePicker(context: context, initialTime: TimeOfDay.now(),);
            }, child: Text('Select Time')):
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person,color: Colors.grey,),
                  title: Text('Name'),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                ).marginSymmetric(horizontal: 10),
                ListTile(
                  leading: Icon(Icons.mail,color: Colors.grey,),
                  title: Text('Email'),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                ).marginSymmetric(horizontal: 10),
                ListTile(
                  leading: Icon(Icons.location_on,color: Colors.grey,),
                  title: Text('Location'),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                ).marginSymmetric(horizontal: 10),
                ListTile(
                  leading: Icon(Icons.watch_later_rounded,color: Colors.grey,),
                  title: Text('Delivery Time'),
                  trailing: Text('$time',style: TextStyle(fontSize: 13),),
                ),
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(onDateTimeChanged: (value) {
                    setState(() {
                      time=value;
                    });
                  },),
                )
              ],
            ),
            Obx(
                  () =>  CupertinoTabBar(items: [
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month)),
                BottomNavigationBarItem(icon: Icon(Icons.phone)),
                BottomNavigationBarItem(icon: Icon(Icons.timelapse)),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
              ],onTap: (value) {
                controller.tabBar(value);
              },border: Border.all(color: Colors.black54,width: 3),currentIndex: controller.tabBarButton.value,),
            ),
          ],
        ),
      ),
    );
  }
}

bool groupValue = false;
String gender = 'Male';
DateTime? time;