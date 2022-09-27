import 'package:flutter/material.dart';
import 'dart:ui';
class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[400],
        leading: Container(
          margin: EdgeInsets.all(5),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            width: 100,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('4.8',style: TextStyle(color: Colors.black),),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 10,),
            Center(
                child:
                Image.asset('assets/Image Popular Product 1.png',width: 250,height: 200,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child:
                Image.asset('assets/Image Popular Product 1.png')),
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child:
                  Image.asset('assets/ps4_console_white_2.png')),
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child:
                  Image.asset('assets/ps4_console_white_3.png')),
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child:
                  Image.asset('assets/ps4_console_white_4.png')),

            ],),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 10,left: 10),
              width: 400,
              height: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text('Wireless Controller for PSA',style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                            color: Colors.pinkAccent[100],
                          ),
                          height: 40,
                          width: 60,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 20,
                              ))),
                    ],
                  ),
                  Text('Wireless Controller for PS4 gives you what\nyyou want in your gaming from over precision\ncontrol your games to sharing...',style: TextStyle(
                    fontSize: 17,color: Colors.grey,
                  ),),
                  SizedBox(height: 6,),
                  Text('See More Detail >',style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red,
                  ),),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(top: 10,left: 10),
                    width: 400,
                    height:70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    Container(
                   margin: EdgeInsets.all(15),
                  // padding: EdgeInsets.all(20),
                    width: 25,
                    height:25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink,
                    ),
                    ),
                        Container(
                          margin: EdgeInsets.all(15),
                          //  padding: EdgeInsets.only(top: 10,left: 10),
                          width: 25,
                          height:25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          //  padding: EdgeInsets.only(top: 10,left: 10),
                          width: 25,
                          height:25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.lime,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          //  padding: EdgeInsets.only(top: 10,left: 10),
                          width: 25,
                          height:25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 40,),
                        Container(
                          margin: EdgeInsets.all(15),
                          //  padding: EdgeInsets.only(top: 10,left: 10),
                          width: 30,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Icon(

                              Icons.remove,color: Colors.red),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          //  padding: EdgeInsets.only(top: 10,left: 10),
                          width: 30,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Icon(

                              Icons.add,color: Colors.red),
                        ),

                      ],
                    ),
                  ),
                  
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 250,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {
                        },
                        child: Text(

                          'Add To Cart',

                          style: TextStyle(color: Colors.white, fontSize: 20,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),



    ));
  }
}
