import 'package:education_system/app.dart';
import 'package:flutter/material.dart';
import '../../../../componants.dart';

class SchoolSchedulesScreen extends StatelessWidget {
  const SchoolSchedulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: drawerAll(),
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ],
            centerTitle: true,
            title: Text(
              translation(context).schedules,
             ),
            bottom:  PreferredSize(
                child:  Container(
                  height: 60,
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )
                  ),
                  child: TabBar(
                    labelStyle:const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(
                          text: translation(context).saturday,
                        ),
                        Tab(
                          text: translation(context).sunday,
                        ),
                        Tab(
                          text: translation(context).monday,
                        ),
                        Tab(
                          text: translation(context).tuesday,
                        ),
                        Tab(
                          text: translation(context).wednesday,
                        ),
                        Tab(
                          text: translation(context).thursday,
                        )
                      ]),
                ),
                preferredSize:const Size(double.infinity, 80)),
          ),
          body: TabBarView(
            children: <Widget>[
              listSchedules(),
              listSchedules(),
              listSchedules(),
              listSchedules(),
              listSchedules(),
              listSchedules(),
            ],
          )),
    );
  }
}

Widget listSchedules()=>ListView.builder(
    itemBuilder: (context,index)=>Padding(
      padding: const EdgeInsets.only(right:10.0,left: 10),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
                border: Border.all(color: Colors.black12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.timelapse,color: Colors.grey,size: 25,),
                      const SizedBox(width: 10),
                      Text(
                        '10:30 '+ translation(context).am,
                        style: const TextStyle(
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(width: 40,),
                      const Text(
                        'مادة الرياضيات',
                        style:  TextStyle(
                            fontSize: 18,
                            color: Colors.green
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0,right: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text(
                          'الحصة الثالثة',
                          style:  TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Spacer(),
                        Text(
                          'حجز رقم 5',
                          style:  TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    itemCount: 5
);