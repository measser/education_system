import 'package:flutter/material.dart';
import 'package:hadana/late.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        listTileTheme:const ListTileThemeData(
          textColor: Colors.black,
          iconColor: Colors.black
        ),
        iconTheme:const IconThemeData(
          color: Colors.black
        ),
        primarySwatch: AppColors.primarySwatch,
      ),
      home: const LateScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


