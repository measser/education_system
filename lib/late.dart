import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'componants.dart';

class LateScreen extends StatelessWidget {
  const LateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        drawer: drawerAll(),
        appBar: AppBar(
          foregroundColor: Colors.white,
          toolbarHeight: 80,
          elevation: 0.0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
          ),
          centerTitle: true,
          bottom:PreferredSize(
            preferredSize: Size(double.infinity,80),
            child: Container(
              height: 65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                )),
              child: TabBar(

                automaticIndicatorColorAdjustment: false,
                indicatorColor: AppColors.zzz,
                tabs: <Widget>[
                  Tab(
                    text: 'في انتظار الموافقة',
                  ),
                  Tab(
                    text: 'تمت الموافقة',
                  ),
                  Tab(
                    text: 'مرفوضة',
                  ),
                ],
              ),
            ),
          ) ,
          title: const Text(
            'الإستئذانات',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              )),
          child: TabBarView(
            children: <Widget>[
              Column(
                children: [
                  Text('dsfdsfdsfdsfdfdsf'),
                ],
              ),
              Column(
                children: [
                  Text('dsfdsfdsfdsfdfdsf'),
                ],
              ),
              Column(
                children: [
                  Text('dsfdsfdsfdsfdfdsf'),
                ],
              ),
            ],
          ),
          ),
        ),
    );
  }
}
