import 'package:education_system/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../componants.dart';
import '../home.dart';

// ignore: must_be_immutable
class LateScreen extends StatefulWidget {
  const LateScreen({Key? key}) : super(key: key);

  @override
  State<LateScreen> createState() => _LateScreenState();
}

class _LateScreenState extends State<LateScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: PreferredSize(
        child: DefaultAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.indigo,
          title: translation(context).delays,
        ),
        preferredSize: const Size(double.infinity, 80),
      ),
      drawer: drawerAll(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(50.0),
          ),
        ),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          translation(context).number_of_delays,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 5,),
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.red,
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                physics:const BouncingScrollPhysics(),
                  itemBuilder: (context,index)=>ExpansionTile(

                    collapsedBackgroundColor: Colors.white,
                    initiallyExpanded: true,
                    collapsedIconColor: Colors.grey,
                    iconColor: Colors.red,
                    controlAffinity: ListTileControlAffinity.trailing,
                      title: Row(
                        children: const[
                          Icon(Icons.date_range_outlined, color: Colors.grey,),
                          SizedBox(width: 5,),
                          Text(
                            '01/01/2022',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      children:[
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context,index)=>Container(
                            decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey[100]!)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20,left: 20,bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'مادة الرياضيات',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.timelapse,color: Colors.grey,),
                                  const SizedBox(width: 5,),
                                  const Text(
                                    '10:30',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    translation(context).am,
                                    style:const TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    '20 دقيقة' ,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          itemCount: 3,
                        ),
                      ]
                  ),
                itemCount: 3,
              ),
            )

          ],
        ),
      ),
    );
  }
}
