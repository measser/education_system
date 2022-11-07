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
              child:const TabBar(
                labelPadding: EdgeInsets.all(1),
                labelStyle: TextStyle(
                  fontSize: 20
                ),
                // labelStyle:  TextStyle(
                //   fontSize: 16,
                // ),
                automaticIndicatorColorAdjustment: false,
                indicatorColor: AppColors.zzz,
                tabs: <Widget>[
                  Tab(
                    text: 'تأخير',
                    // child: Text(
                    //   'في انتظار الموافقة',
                    //   style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    // ),
                  ),
                  Tab(
                    text: 'مواظبةوسلوك',

                  ),
                  Tab(
                    text: 'غياب',
                  ),
                  Tab(
                    text: 'الباص',
                  ),
                ],
              ),
            ),
          ),
          title: const Text(
            'التقارير',
            style:  TextStyle(
              color: Colors.white,
            ),
          ), //
        ),
        body: Container(
          color: Colors.grey[200],

          child: TabBarView(
            children: [
              listBuild(),
              Text('fsdfsdf'),
              Text('fsdfsdf'),
              Text('fsdfsdf'),
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
    child: Column(
      children: [
        Container(
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
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  itemCount: 10,
);