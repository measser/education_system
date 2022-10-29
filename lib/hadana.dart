import 'package:flutter/material.dart';
import 'package:hadana/componants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Login'.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultFormField(
                        controller: TextEditingController(),
                        type: TextInputType.emailAddress,
                        label: 'Email',
                        textColor: Colors.blue,
                        border: const OutlineInputBorder(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultFormField(
                        controller: TextEditingController(),
                        type: TextInputType.emailAddress,
                        label: 'Password',
                        textColor: Colors.blue,
                        border: const OutlineInputBorder(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                         const Spacer(),
                          DefaultButton2(
                            function: () {},
                            text: 'Facebook',
                            icon: Icons.facebook_outlined,
                            width: 150,
                          ),
                          Spacer(),
                          DefaultButton2(
                            function: () {},
                            text: 'Google',
                            icon: Icons.g_mobiledata_outlined,
                            width: 150,
                            background: Colors.red,
                          ),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DefaultButton(
                          function: () {},
                          text: 'login',
                          background: Colors.lightBlue),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
