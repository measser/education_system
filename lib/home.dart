import 'package:flutter/material.dart';

import 'colors.dart';
import 'componants.dart';
import 'hadana.dart';
import 'homework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: const PreferredSize(
        child: DefaultAppBar(
          icon: Icons.notification_add_outlined,
        ),
        preferredSize: Size(double.infinity, kToolbarHeight),
      ),
      drawer: drawerAll(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Measser Hussein',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Activities(
                              color: AppColors.teal,
                              text: 'Home Work',
                              nest: () {
                                navegateTo(context, const HomeWorkScreen());
                              },
                            ),
                            const Spacer(),
                            Activities(
                              color: Colors.indigoAccent,
                              text: 'Home Work',
                              nest: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Activities(
                              color: AppColors.purple,
                              text: 'Home Work',
                              nest: () {
                                navegateTo(context, const LoginScreen());
                              },
                            ),
                            const Spacer(),
                            Activities(
                              color: AppColors.marvel,
                              text: 'Home Work',
                              nest: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Activities(
                              color: AppColors.orange,
                              text: 'Home Work',
                              nest: () {},
                            ),
                            const Spacer(),
                            Activities(
                              color: AppColors.green,
                              text: 'Home Work',
                              nest: () {},
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({
    Key? key,
    this.backgroundColor,
    this.icon,
    this.title,
    this.onPressed,
  }) : super(key: key);

  final Color? backgroundColor;
  final IconData? icon;
  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: onPressed, icon:  Icon(icon ?? Icons.arrow_forward_ios_rounded ))
      ],
      backgroundColor: backgroundColor ?? Colors.lightGreen,
      elevation: 0.0,
      title:  Column(
        children: [
          Center(child: Text(title ?? '')),
        ],
      ),
    );
  }
}
//#3e4854
