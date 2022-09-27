import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/Back');
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
                      'Forgot Password ',
                      style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Please enter your email and we will sent',
                      style: TextStyle(fontSize: 18,color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'you a link to return to your account',
                      style: TextStyle(fontSize: 18,color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 80,),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(

                            keyboardType: TextInputType.emailAddress,

                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(width: 350,height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              labelText:'Email',
                              labelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 19),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500 ),
                              suffixIcon: Icon(Icons.email_outlined ),
                            ),
                            enabled:true ,

                          ),

                          SizedBox(height: 90,),

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 350,
                            height: 50,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context,'/Home');
                              },
                              child: Text(

                                'Continue',

                                style: TextStyle(color: Colors.white, fontSize: 20,),
                              ),
                            ),
                          ),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Dont have an account ?',style: TextStyle(
                                color: Colors.grey,fontSize: 20,
                              ),),
                              GestureDetector(
                                child: Text('Sign Up',style: TextStyle(color: Colors.red,fontSize: 17),),
                                onTap: (){
                                  Navigator.pushNamed(context,  '/Register');
                                },

                              ),

                            ],
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
