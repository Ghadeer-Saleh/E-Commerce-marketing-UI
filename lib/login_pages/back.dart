import 'package:flutter/material.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  bool value = false;
  bool value2=false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Verification');
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
                      'Welcome back ',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Sign in with your email and password',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'or continue with social media',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(
                                  width: 350, height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.email_outlined),
                            ),
                            enabled: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(
                                  width: 350, height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                              hintText: 'Enter your Password',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.lock_open_outlined),
                            ),
                            enabled: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: value,
                                  onChanged: (value1) {
                                    setState(() {
                                      this.value = value1!;
                                    });
                                  }),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Remember me ',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
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
                                Navigator.pushNamed(context, '/Forgot');
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const  [
                              CircleAvatar(
                                radius: 16,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.6qgcc0DHFCebEP8pKtsiQAAAAA?w=179&h=180&c=7&r=0&o=5&pid=1.7'),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 16,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.BXgSxqDyG0vna8cBgIKklwHaHa?pid=ImgDet&w=600&h=600&rs=1'),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              CircleAvatar(
                                radius: 15,
                                //maxRadius: 15,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.c_1yd6G1P7tgFWhYQmg07wHaGA?w=239&h=195&c=7&r=0&o=5&pid=1.7'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont have an account ?',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                              GestureDetector(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 17),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/Register');
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
