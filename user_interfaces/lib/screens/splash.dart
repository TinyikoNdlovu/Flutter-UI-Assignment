import 'package:flutter/material.dart';
import 'package:user_interfaces/components/colors.dart';
import 'package:user_interfaces/components/image_strings.dart';
import 'package:user_interfaces/components/sizes.dart';
import 'package:user_interfaces/screens/login.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/SplashPage';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage(tLogoImage),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitFadingCircle(
              color: tAccentColor,
              size: tSplashContainerSize,
            )
          ],
        ),
      ),
    );
  }
}
