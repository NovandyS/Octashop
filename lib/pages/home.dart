import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:octashop/pages/login.dart';
import 'package:octashop/pages/news.dart';
import 'package:octashop/pages/voucher.dart';

class HomePage extends StatefulWidget {
  final String username;

  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  var ctx;

  void logout (){
    Navigator.push(ctx, MaterialPageRoute(
        builder: (ctx) => LoginPage()
    ));
  }

  ButtonStyle buttonStyle = TextButton.styleFrom(
    textStyle: TextStyle(
      fontWeight: FontWeight.bold
    ),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image(
                width: 100,
                height: 100,
                image: AssetImage("assets/Octashop Logo.png")
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HomePage(username: widget.username),
                ))
              },
            ),
            ListTile(
              leading: Icon(Icons.confirmation_num),
              title: Text("Voucher"),
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => VoucherPage(username: widget.username),
                ))
              },
            ),
            ListTile(
              leading: Icon(Icons.feed),
              title: Text("News and Promotion"),
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => NewsPage(username: widget.username),
                ))
              },
            ),
            ListTile(
              title: Text(""),
            ),
            TextButton(
              style: buttonStyle,
              onPressed: logout,
              child: Text("LOGOUT"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 24),
                      child: Text("Hello, " + widget.username,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text("Welcome to Octashop!"),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image(
                          width: 95,
                          height: 95,
                          image: AssetImage("assets/Octashop Logo.png")
                      ),
                    )
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 16, right: 24),
              child: CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/1.jpg"),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/2.jpeg"),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/3.jpg"),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/4.png"),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/5.jpg"),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  initialPage: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Octashop established on 01 June 2022 is the first application"
                    "to help gamers all around the world to get updated about the game they loved. "
                    "We will provide vouchers and news about game for you.",
                    style: TextStyle(
                      height: 1.4,
                    ),
                    textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("You can top up your games here with an easy click. We provide many options"
                    "game that people in this world like the most. They can choose the amount and it will"
                    "automatically topped up in 5 minutes.",
                  style: TextStyle(
                    height: 1.4,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}