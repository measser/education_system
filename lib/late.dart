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
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Container(
              height: 65,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  )),
              child: const TabBar(
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
          ),
          title: const Text(
            'الإستئذانات',
            style: TextStyle(
              color: Colors.white,
            ),
          ), //
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
                children:  [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: const[
                            Text(
                              ' بسام المحترم مصمم التطبيق',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  Text('second tab body'),
                ],
              ),
              Column(
                children: const [
                  Text('third tab body'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
