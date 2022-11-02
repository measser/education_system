import 'package:education_system/main.dart';
import 'package:education_system/presentation/widgets/default_form_field.dart';
import 'package:flutter/material.dart';

import '../../app.dart';
import '../../componants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.grey),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Text(
                                translation(context).login.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultFormField(
                          controller: TextEditingController(),
                          type: TextInputType.emailAddress,
                          label: translation(context).email,
                          prefix: Icons.email_outlined,
                          labelTextColor: Colors.lightBlue,
                          border: const OutlineInputBorder(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultFormField(
                          controller: TextEditingController(),
                          type: TextInputType.emailAddress,
                          label: translation(context).password,
                          labelTextColor: Colors.lightBlue,
                          prefix: Icons.lock,
                          border: const OutlineInputBorder(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultButton(
                          function: () {},
                          text: translation(context).login,
                          background: Colors.lightBlue,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child:  Text(
                              translation(context).forget_password,
                              style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
