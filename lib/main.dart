import 'package:flutter/material.dart';
import 'package:login_signup/forgotPass.dart';
import 'package:login_signup/home_page.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/registration.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'registration': (context) => RegistrationPage(),
      'home_page': (context) => HomePage(),
      'forgotPass': (context) => ForgotPassword(),
    },
  ));
}
