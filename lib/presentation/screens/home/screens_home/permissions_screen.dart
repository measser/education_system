import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../app.dart';
import '../../../../colors.dart';
import '../../../../componants.dart';


class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
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
            translation(context).permissions,
          ),
          bottom:  PreferredSize(
              child:  Container(
                height: 60,
                width: double.infinity,
                decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )
                ),
                child: Center(
                  child: TabBar(
                      labelStyle:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      isScrollable: true,
                      automaticIndicatorColorAdjustment: false,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: AppColors.zzz,
                      tabs: [
                        Tab(
                          text: translation(context).waiting,
                        ),
                        Tab(
                          text: translation(context).approved,
                        ),
                        Tab(
                          text: translation(context).rejected,
                        ),
                      ]),
                ),
              ),
              preferredSize:const Size(double.infinity, 80)),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(25),
              )),
          child: TabBarView(
            children: <Widget>[
              listOneScreen(),
              listTwoScreen(),
              listThreeScreen(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 45,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}

Widget listOneScreen() => ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 330,
                          child:  Text(
                            '  ???????? ?????????????? ???????? ??????????????',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.date_range_outlined,
                              size: 18,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '20/02/2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      itemCount: 10,
    );

Widget listTwoScreen() => ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 330,
                          child: Text(
                            '  ???????? ?????????????? ???????? ??????????????',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.date_range_outlined,
                              size: 18,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '20/02/2022',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      itemCount: 10,
    );

Widget listThreeScreen() => ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      child: Text(
                        '  ???????? ?????????????? ???????? ??????????????',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range_outlined,
                          size: 18,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '20/02/2022',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    //navegateTo(context, null);
                  },
                  child: Container(
                    width: 102,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text(
                        '?????????? ????????????',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      itemCount: 10,
    );
