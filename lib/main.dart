import 'package:flutter/material.dart';
import 'package:project_1/login_pages/splash.dart';
import 'package:project_1/login_pages/register.dart';
import 'package:project_1/login_pages/complete.dart';
import 'package:project_1/login_pages/verification.dart';
import 'package:project_1/login_pages/back.dart';
import 'package:project_1/login_pages/forgot_pass.dart';
import 'package:project_1/home_pages/home.dart';
import 'package:project_1/home_pages/home_details.dart';
import 'package:project_1/home_pages/person.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,

    routes:{
      '/': (context) => const Splash(),
      '/Register': (context) => const Register(),
      '/Complete': (context) => const Complete(),
      '/Verification': (context) => const Verification(),
      '/Back': (context) => const Back(),
      '/Forgot': (context) => const Forgot(),
      '/Home': (context) => const Home(),
      '/HomeDetails': (context) => const HomeDetails(),
      '/personal': (context) => const personal(),
    },

  )
  );
}

