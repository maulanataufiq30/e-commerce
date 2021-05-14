import 'package:e_commerce/ui/pages/home_page.dart';
import 'package:e_commerce/ui/pages/main_page.dart';
import 'package:e_commerce/ui/pages/register_page.dart';
import 'package:e_commerce/ui/widgets/custom_dialog.dart';
import 'package:e_commerce/utils/app_style.dart';
import 'package:e_commerce/utils/component/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  bool errorEmailField = false;
  bool errorPasswordField = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Email',
                  hintStyle: greyFontStyle,
                  errorText:
                  errorEmailField ? 'Email tidak boleh kosong' : null,
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan Password',
                  hintStyle: greyFontStyle,
                  errorText:
                  errorEmailField ? 'Password tidak boleh kosong' : null,
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                ),
                obscureText: true,
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: InkWell(
                onTap: (){},
                child: Text(
                  "Lupa password?",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0XFF2661FA)
                  ),
                ),
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () async {
                  setState(() {
                    emailController.text.isEmpty
                        ? errorEmailField = true
                        : errorEmailField = false;
                    passwordController.text.isNotEmpty
                        ? errorPasswordField = false
                        : errorPasswordField = true;
                  });
                  if (emailController.text == 'admin' &&
                      passwordController.text == 'admin') {
                    Get.to(MainPage());
                  } else {
                    showDialog(
                      barrierDismissible: true,
                        context: context,
                        builder: (context) =>
                            FailedDialog(title: 'Gagal', onPress: () => Get.back(), description: 'Username atau password ssalah!'));
                  }
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.blueAccent
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => Get.to(RegisterPage()),
                child: Text(
                  "Belum punya akun? Register",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}