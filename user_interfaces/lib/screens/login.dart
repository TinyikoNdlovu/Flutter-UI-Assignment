import 'package:flutter/material.dart';
import 'package:user_interfaces/components/colors.dart';
import 'package:user_interfaces/components/my_textfield.dart';
import 'package:user_interfaces/components/text_strings.dart';
import 'package:user_interfaces/screens/home.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/LoginPage';
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  // void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),

            const SizedBox(height: 50),

            // welcome back, you've been missed!

            // username textfield
            MyTextField (
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // forgot passord

            //sign in button
            // ignore: unnecessary_const
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(
                        color: tDarkColor),
                        ),
                        )
                        ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                child: const Text(tLogin),
              ),
               
            ],
          ),
           
            // or continue with

            // google + apple signin buttons
          ],
        ),
      )),
    );
  }
}
