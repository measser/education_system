import 'package:education_system/hadana.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                labelStyle:TextStyle(
                    fontSize: 18 ,
                ),
                automaticIndicatorColorAdjustment: false,
                indicatorColor: AppColors.zzz,
                tabs: <Widget>[
                  Tab(
                    text: 'في انتظارالموافقة',
                    // child: Text(
                    //   'في انتظار الموافقة',
                    //   style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    // ),
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
          title:  Text(
            AppLocalizations.of(context).doctor_masr,
            style: const TextStyle(
              color: Colors.white,
            ),
          ), //
        ),
        body: Container(
          decoration:  BoxDecoration(
              color: Colors.grey[200],
              borderRadius:const BorderRadius.vertical(
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
          onPressed: (){},
          child: const Icon(Icons.add,color: Colors.white,size: 45,)
        ),
      ),
    );
  }
}

Widget listOneScreen()=>ListView.builder(
  itemBuilder: (context,index)=>Padding(
    padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
    child: Column(
      children:  [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 330,
                      child: const Text(
                        '  بسام المحترم مصمم التطبيق',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                      children:  const[
                        Icon(Icons.date_range_outlined,size: 18,color: Colors.grey,),
                        SizedBox(width: 3,),
                        Text('20/02/2022',style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  itemCount: 10,
);
Widget listTwoScreen()=>ListView.builder(
  itemBuilder: (context,index)=>Padding(
    padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
    child: Column(
      children:  [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 330,
                      child: const Text(
                        '  بسام المحترم مصمم التطبيق',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                      children:  const[
                        Icon(Icons.date_range_outlined,size: 18,color: Colors.grey,),
                        SizedBox(width: 3,),
                        Text('20/02/2022',style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const Icon(Icons.arrow_circle_right_rounded,color: Colors.green,),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  itemCount: 10,
);
Widget listThreeScreen()=>ListView.builder(
  itemBuilder: (context,index)=>Padding(
    padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  child:  Text(
                    '  بسام المحترم مصمم التطبيق',
                    style: TextStyle(
                      fontSize: 16.0,

                    ),
                  ),
                ),
                Row(
                  children:  const[
                    Icon(Icons.date_range_outlined,size: 18,color: Colors.grey,),
                    SizedBox(width: 3,),
                    Text('20/02/2022',style: TextStyle(fontSize: 16,color: Colors.grey),),
                  ],
                )
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                //navegateTo(context, null);
              },
              child: Container(
                width:102,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child:const  Center(
                  child:  Text(
                    'لماذا الرفض؟',
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