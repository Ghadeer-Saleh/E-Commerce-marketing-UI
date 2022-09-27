import 'package:flutter/material.dart';
import 'dart:async';
import 'package:date_time_picker/date_time_picker.dart';

class Complete extends StatefulWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = '';
  var myController = TextEditingController();

  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2022));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Register');
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
                      'Complete Profile ',
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Complete your details or continue\n with social media ',
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
                            key: _formKey,
                            keyboardType: TextInputType.text,
                            controller: myController,
                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(
                                  width: 350, height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'First Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                              hintText: 'Enter your first name',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.email_outlined),
                            ),
                            enabled: true,
                            validator: (value) {
                              if (value != null) {
                                if (value.isNotEmpty && value.length > 2) {
                                  return null;
                                } else if (value.length < 3 &&
                                    value.isNotEmpty) {
                                  return 'no way your name is that short ';
                                } else {
                                  return "please give us your name ";
                                }
                              }
                            },
                            autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(
                                  width: 350, height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Last Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                              hintText: 'Enter your last name',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.lock_open_outlined),
                            ),
                            enabled: true,
                            validator: (value) {
                              if (value != null) {
                                if (value.isNotEmpty && value.length > 2) {
                                  return null;
                                } else if (value.length < 3 &&
                                    value.isNotEmpty) {
                                  return 'no way your name is that short ';
                                } else {
                                  return "please give us your name ";
                                }
                              }
                            },
                            autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(
                                  width: 350, height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                              hintText: 'Enter your phone number',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.lock_open_outlined),
                            ),
                            enabled: true,
                            validator: (value) {
                              if (value != null) {
                                if (value.isNotEmpty && value.length > 10) {
                                  return null;
                                } else
                                if (value.isNotEmpty && value.length < 10) {
                                  return 'Your Number is less than 10';
                                } else {
                                  return 'Enter your number';
                                }
                              }
                            },
                            autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                          ),
                         const  SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              constraints: const BoxConstraints.tightFor(
                                  width: 350, height: 60),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Address',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                              hintText: 'Enter your address',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                              suffixIcon: Icon(Icons.location_on_outlined),
                            ),
                            enabled: true,
                            validator: (value) {
                              if (value != null) {
                                if (value.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'Enter your address';
                                }
                              }
                            },
                            autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                          ),
                          const  SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.datetime,
                            enabled: true,
                             onTap: () => _selectDate(context),
                            decoration: InputDecoration(
                              constraints: BoxConstraints.tightFor(width: 350,height: 60),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              labelText: 'Select Date Birthday',
                              labelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 19),
                              hintText: currentDate.toString(),
                             suffixIcon: Icon(Icons.event,color: Colors.grey),

                            ),

                          ),


                          SizedBox(
                            height: 25,
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

                                Navigator.pushNamed(context, '/Verification');
                              },
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        const   SizedBox(
                            height: 40,
                          ),
                         const Text(
                            'By Continuing your confirm that you agree',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        const   Text('with our Term and Condition',
                              style:
                              TextStyle(color: Colors.grey, fontSize: 15)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
