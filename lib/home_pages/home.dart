import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index==3){
        Navigator.pushNamed(context, '/personal');
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Product',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_alert_outlined, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 80,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple[800],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A Summer Surpise',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Cashback 20%',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 60,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent[100],
                            borderRadius: BorderRadius.circular(7)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.flash_on, color: Colors.orange),
                        ),
                      ),
                      Text(
                        'Flash\nDetail',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 60,
                        //margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent[100],
                            borderRadius: BorderRadius.circular(7)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      Text(
                        'Bill',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 60,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent[100],
                            borderRadius: BorderRadius.circular(7)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.videogame_asset_outlined,
                              color: Colors.orange),
                        ),
                      ),
                      Text(
                        'Game',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 60,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent[100],
                            borderRadius: BorderRadius.circular(7)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.card_giftcard_outlined,
                              color: Colors.orange),
                        ),
                      ),
                      Text(
                        'Daily\nGift',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 60,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent[100],
                            borderRadius: BorderRadius.circular(7)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_outlined,
                              color: Colors.orange),
                        ),
                      ),
                     const Text(
                        'More',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                      ),
                    ],
                  ),
                ],
              ),
             const  SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const[
                  Text(
                    'Special for you',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
            const  SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: SizedBox(
                  width: 450,
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/Image Banner 2.png',
                            ),
                            const Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Smartphone",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Image.asset('assets/Image Banner 3.png'),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Fashion\n24 Brands",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             const  SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Popular Products',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 150,
                width: 600,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 60,
                      padding: EdgeInsets.all(15),
                      child: FlatButton(
                        child: Image.asset(
                          'assets/Image Popular Product 1.png',
                          width: 100,
                          height: 80,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/HomeDetails');
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 60,
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/Image Popular Product 2.png',
                        width: 100,
                        height: 80,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 150,
                      height: 60,
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/Image Popular Product 3.png',
                        width: 100,
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wireless Controller\nfor PS4',
                            style: TextStyle(fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '\$64.99',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepOrange),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.pinkAccent[100],
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.pink,
                                        size: 20,
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(11),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nike Sport White-\nMan Pant',
                            style: TextStyle(fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '\$50.5',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepOrange),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.pinkAccent[100],
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.pink,
                                        size: 20,
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(11),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Glove\nPolyg',
                            style: TextStyle(fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '\$636.0',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.deepOrange),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.pinkAccent[100],
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.pink,
                                        size: 20,
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap: _onItemTapped,



          elevation: 5,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.storefront_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',

            ),
          ],
        ),
      ),
    );
  }
}
