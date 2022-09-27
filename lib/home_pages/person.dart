import 'package:flutter/material.dart';

class personal extends StatefulWidget {
  const personal({Key? key}) : super(key: key);

  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
        ),

        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,

                children: [
                  Container(
                    width: 200,
                    height: 170,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Profile Image.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400],

                    ),
                    //color: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black26,
                      ),
                    ),
                    //alignment: Alignment.bottomRight,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 226, 217, 217)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person, color: Colors.orange),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "My Account",
                          style:
                              TextStyle(color: Colors.orange, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 226, 217, 217)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none,
                            color: Colors.orange),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Notifications",
                          style:
                              TextStyle(color: Colors.orange, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 226, 217, 217)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.settings, color: Colors.orange),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Setting",
                          style:
                              TextStyle(color: Colors.orange, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 226, 217, 217)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline,
                            color: Colors.orange),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Help Center",
                          style:
                              TextStyle(color: Colors.orange, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange),
                      ),
                      //Row(mainAxisAlignment: MainAxisAlignment.end,children: [ IconButton(onPressed: () {},icon: const Icon(Icons.arrow_forward_ios   ,color: Colors.orange),),],),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 226, 217, 217)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.logout, color: Colors.orange),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log Out",
                          style:
                              TextStyle(color: Colors.orange, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 155,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
