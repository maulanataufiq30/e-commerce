import 'package:e_commerce/ui/pages/login_page.dart';
import 'package:e_commerce/ui/widgets/custom_button.dart';
import 'package:e_commerce/utils/app_color.dart';
import 'package:e_commerce/utils/app_constant.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 80),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.blue,
                ),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Image(
                            image: AssetImage('assets/bg_dashboard.png'))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Halo', style: whiteFontBoldStyle2),
                        Container(
                          width: 200,
                          child: Text(
                            'Users',
                            maxLines: 1,
                            style: blackFontBoldStyle0.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('"Selamat datang di Tanipedia"',
                            style: greyFontStyleSmall.copyWith(
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Spesial Untukmu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue)),
                    InkWell(
                      child:
                      Text('Lainnya', style: TextStyle(color: Colors.blue)),
                      onTap: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (context) => CommingSoonDialog());
                      },
                    )
                  ],
                ),
              ),
              // buildHargaPasar(),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Flash Sale',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue)),
                    InkWell(
                        child:
                        Text('Lainnya', style: TextStyle(color: Colors.blue)),
                        onTap: () {
                          // Get.toNamed(AppRoutes.PUPUK);
                        })
                  ],
                ),
              ),
              // buildDistribusiPupuk(),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Disekitarmu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue)),
                    InkWell(
                      child:
                      Text('Lainnya', style: TextStyle(color: Colors.blue)),
                      onTap: () {
                        // Get.toNamed(AppRoutes.PANEN);
                      },
                    )
                  ],
                ),
              ),
              // buildPanen(),
              SizedBox(height: 10),
              CustomButton(onPress: () => Get.offAll(LoginPage()), text: 'Logout', color: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
