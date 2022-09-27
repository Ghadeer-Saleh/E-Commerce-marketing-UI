import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Complete');
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'OTP Verification ',
                      style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'We sent you code to + 1 898 860 *** ',
                      style: TextStyle(fontSize: 18,color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      Text(
                        'This code will expired in',
                        style: TextStyle(fontSize: 18,color: Colors.grey),
                        textAlign: TextAlign.center,

                      ),
                      SizedBox(width: 5,),
                      Text(
                        '00:13',
                        style: TextStyle(fontSize: 18,color: Colors.red),
                        textAlign: TextAlign.center,
                      ),

                    ],),
                    SizedBox(height: 80,),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            TextFormField(

                              keyboardType: TextInputType.emailAddress,

                              decoration: InputDecoration(
                                constraints: BoxConstraints.tightFor(width: 60,height: 60),

                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              enabled:true ,

                            ),
                            TextFormField(

                              keyboardType: TextInputType.emailAddress,

                              decoration: InputDecoration(
                                constraints: BoxConstraints.tightFor(width: 60,height: 60),

                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              enabled:true ,

                            ),
                            TextFormField(

                              keyboardType: TextInputType.emailAddress,

                              decoration: InputDecoration(
                                constraints: BoxConstraints.tightFor(width: 60,height: 60),

                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              enabled:true ,

                            ),
                            TextFormField(

                              keyboardType: TextInputType.emailAddress,

                              decoration: InputDecoration(
                                constraints: BoxConstraints.tightFor(width: 60,height: 60),

                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              ),
                              enabled:true ,

                            ),
                          ],),
                          SizedBox(height:120,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 350,
                            height: 50,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Back');
                              },
                              child: Text(

                                'Continue',

                                style: TextStyle(color: Colors.white, fontSize: 20,),
                              ),
                            ),
                          ),
                          SizedBox(height: 100,),

                          Text(

                            'Resend OTP Code',style: TextStyle(color: Colors.grey,fontSize: 15, decoration: TextDecoration.underline,),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )));
  }
}
