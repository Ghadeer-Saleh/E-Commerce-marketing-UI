import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
String? _email;
TextEditingController _password=TextEditingController();
TextEditingController _Confirmpassword=TextEditingController();
final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
var myController=TextEditingController();
  @override
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Splash');
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
                      'Register Account ',
                      style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Complete your details or continue\n with social media ',
                      style: TextStyle(fontSize: 18,color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50,),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(

                            controller: myController,
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
                          SizedBox(height: 20,),
                          TextFormField(


                            keyboardType: TextInputType.number,

                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(width: 350,height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              labelText:'Password',
                              labelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 19),
                              hintText: 'Enter your Password',
                              hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.lock_open_outlined ),
                            ),
                            enabled:true ,

                          ),
                          SizedBox(height: 20,),
                          TextFormField(

                            keyboardType: TextInputType.number,

                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(width: 350,height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              labelText:'Confirm Password',
                              labelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 19),
                              hintText: 'Re-enter your password',
                              hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.lock_open_outlined ),
                            ),
                            enabled:true ,

                          ),
                          SizedBox(height: 45,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 350,
                            height: 50,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Complete');

                              },
                              child: Text(

                                'Continue',

                                style: TextStyle(color: Colors.white, fontSize: 20,),
                              ),
                            ),
                          ),
                          SizedBox(height: 70,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                             CircleAvatar(
                               radius:16,
                                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.6qgcc0DHFCebEP8pKtsiQAAAAA?w=179&h=180&c=7&r=0&o=5&pid=1.7'),

                             ),
                             SizedBox(width: 15,),
                              CircleAvatar(
                                radius:16,
                                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.BXgSxqDyG0vna8cBgIKklwHaHa?pid=ImgDet&w=600&h=600&rs=1'),
                              ),
                              SizedBox(width: 18,),
                              CircleAvatar(
                                radius:16,
                               //maxRadius: 15,
                                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.c_1yd6G1P7tgFWhYQmg07wHaGA?w=239&h=195&c=7&r=0&o=5&pid=1.7'),
                              ),
                            ],
                          ),
                          Text('By Continuing your confirm that you agree',style: TextStyle(color: Colors.grey,height: 3.5),)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )));
  }
}
