import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:octashop/pages/home.dart';
import 'package:octashop/pages/login.dart';
import 'package:octashop/pages/voucher.dart';

class NewsPage extends StatefulWidget {
  final String username;

  NewsPage({Key? key, required this.username}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewsPageState();
  }
}

class NewsPageState extends State<NewsPage> {
  var ctx;

  void logout() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => LoginPage()));
  }

  ButtonStyle buttonStyle = TextButton.styleFrom(
      textStyle: TextStyle(fontWeight: FontWeight.bold),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News & Promotion"),
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
                  image: AssetImage("assets/Octashop Logo.png")),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(username: widget.username),
                    ))
              },
            ),
            ListTile(
              leading: Icon(Icons.confirmation_num),
              title: Text("Voucher"),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          VoucherPage(username: widget.username),
                    ))
              },
            ),
            ListTile(
              leading: Icon(Icons.feed),
              title: Text("News and Promotion"),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
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
          Container(
            margin: EdgeInsets.only(left: 24, top: 16, right: 24),
            child: CarouselSlider(
              items: [
                Container(
                  child: Card(
                    child: Container(
                      child: Image(
                        image: AssetImage("carousel/1.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Card(),
                ),
                Container(
                  child: Card(),
                ),
                Container(
                  child: Card(),
                ),
                Container(
                  child: Card(),
                ),
              ],
              options: CarouselOptions(
                initialPage: 0,
                // enableInfiniteScroll: true,
                // autoPlay: true,
                // autoPlayInterval: Duration(seconds: 3),
                // enlargeCenterPage: true
              ),
            ),
          ),
        ],
      )),
    );
  }
}
