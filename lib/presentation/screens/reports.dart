import 'package:education_system/app.dart';
import 'package:education_system/presentation/screens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../colors.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
          toolbarHeight: 80,
          elevation: 0.0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Container(
              height: 65,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  )),
              child: TabBar(
                labelPadding: const EdgeInsets.all(1),
                labelStyle:const TextStyle(
                  fontSize: 20
                ),
                // labelStyle:  TextStyle(
                //   fontSize: 16,
                // ),
                automaticIndicatorColorAdjustment: false,
                indicatorColor: AppColors.zzz,
                tabs: <Widget>[
                  Tab(
                    text: translation(context).late,
                    // child: Text(
                    //   'في انتظار الموافقة',
                    //   style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    // ),
                  ),
                  Tab(
                    text: translation(context).behavior,

                  ),
                  Tab(
                    text: translation(context).absence,
                  ),
                  Tab(
                    text: translation(context).bus,
                  ),
                ],
              ),
            ),
          ),
          title:  Text(
            translation(context).student_reports,
            style: const TextStyle(
              color: Colors.white,
            ),
          ), //
        ),
        body: Container(
          color: Colors.grey[200],

          child: TabBarView(
            children: [
              listBuild(),
              listBuild2(),
              listBuild(),
              listBuild2(),
            ],
          ),
        ),
      ),
    );
  }
}
Widget listBuild()=>ListView.builder(
  itemBuilder: (context,index)=>Padding(
    padding: const EdgeInsets.only(
      top: 10,
      right: 10,
      left: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.circular(10),
          border: Border.all(
              color: Colors.black
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            right: 10,
            left: 10
        ),
        child: Column(
          children: [
           const SizedBox(height: 15,),
            Row(
              children: [
                const CircleAvatar(
                  radius: 11,
                    backgroundColor: Colors.indigo,
                    child: Icon(Icons.folder,size: 15,)
                ),
                const SizedBox(width: 10,),
                Text(
                  translation(context).saturday,
                  style:const TextStyle(
                      fontSize: 18
                  ),
                ),
                const SizedBox(width: 10,),
               const Text(
                  '01/02/1999',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                 Text(
                   translation(context).class_number,
                  style:const TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                ),
                const Text(
                  'الثالثه',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 1,
                  height: 25,
                  color: Colors.black,
                ),
                const Spacer(),
                 Text(
                  translation(context).class_time,
                  style:const TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                ),
                 Text(
                  ' 12 '+translation(context).pm,
                  style:const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),

              ],
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    ),
  ),
  itemCount: 10,
);

Widget listBuild2()=>ListView.builder(
  itemBuilder: (context,index)=>Padding(
    padding: const EdgeInsets.only(
      top: 10,
      right: 10,
      left: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.circular(10),
          border: Border.all(
              color: Colors.black
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            right: 10,
            left: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(height: 15,),
            Row(
              children:const [
                Text(
                  'السبت',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  '01/02/1999',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                const Text(
                  'رقم الحصة :',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                ),
                const Text(
                  'الثالثه',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 1,
                  height: 25,
                  color: Colors.black,
                ),
                const Spacer(),
                const Text(
                  'معاد الحصه :',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                ),
                const Text(
                  ' 12 ظهرا',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Spacer(),

              ],
            ),
            SizedBox(height: 15,),
           const Text(
              'هذا النص م الممكن ان يستبدل بنص اخر '
            )
          ],
        ),
      ),
    ),
  ),
  itemCount: 10,
);