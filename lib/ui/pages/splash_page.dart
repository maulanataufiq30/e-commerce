

import 'package:e_commerce/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/utils/app_style.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  toLogin(){
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(LoginPage());
    });
  }

  @override
  void initState() {
    super.initState();
    toLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 170,
                height: 170,
                image: AssetImage('assets/app_logo.png'),
              ),
              // Image(
              //   width: 200,
              //   height: 70,
              //   image: AssetImage('assets/text_app_white.png'),
              // ),
              SizedBox(height: 30,),
              Text('Version 0.0.1', style: whiteFontStyle3)
            ],
          ),
        ),
      ),
    );
  }
}
