import 'package:flutter/material.dart';

import '../../../../app.dart';
import '../../../../componants.dart';
import '../home.dart';

class NotifgationScreen extends StatelessWidget {
  const NotifgationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: PreferredSize(
        child: DefaultAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.teal,
          title: translation(context).notification,
        ),
        preferredSize: const Size(double.infinity, 70),
      ),
      drawer: drawerAll(),
      body: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50),
            ),
            color: Colors.white),
        child: ListView.separated(
          physics:const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> listViewBuilder(),
            separatorBuilder: (context,indx)=>containerSeparator(),
            itemCount: 10),
      ),
    );
  }
}

Widget listViewBuilder()=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ))),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: Text(
                'ahmed add new photo with mohamed ahmed in profile',
                style: TextStyle(height: 1.4, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    ),
  ],
);
Widget containerSeparator()=>Padding(
  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
  child:   Container(

    height: 1,

    width: double.infinity,

    color: Colors.grey[400],

  ),
);