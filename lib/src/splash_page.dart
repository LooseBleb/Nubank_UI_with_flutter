import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/src/core/constants/constants.dart';
import 'package:flutter_training/src/modules/auth/views/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashPage();
  }
}

class _SplashPage extends State<SplashPage> {
  int splashtime = 3;

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.asset(
            'assets/images/nubank.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
