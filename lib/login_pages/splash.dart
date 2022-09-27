import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'TOKOTO',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Welcome to Tokoto , Lets\'s shop',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              child: Image.asset(
                'assets/splash_1.png',
                width: 350,
                height: 300,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 350,
              height: 50,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Register');
                },
                child: Text(

                  'Continue',

                  style: TextStyle(color: Colors.white, fontSize: 20,),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
