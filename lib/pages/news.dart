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
    ctx = context;
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
        child: Container(
          child: CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Card(
                    elevation: 6,
                    child: Flexible(
                        child: Column(
                      children: [
                        Container(
                            padding:
                                EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: Image(
                                image: AssetImage("assets/carousel/1.jpg"))),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "Insights Into Mobile Legends: Bang Bang",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "MOBA is by far one of the most popular video game niches for both desktop and mobile devices. "
                            "While the hype started with millions of players joining DOTA 2 and League of Legends, "
                            "mobile users have also gained similar popularity. Mobile Legends: Bang Bang is the closest "
                            "you can ever get to League of Legends on a smartphone. And the incremental upgrades over the "
                            "years have just made the gameplay much more subtle than ever before.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "src: https://www.hardcoredroid.com/insights-into-mobile-legends-bang-bang/",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ))),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Card(
                    elevation: 6,
                    child: Flexible(
                        child: Column(
                      children: [
                        Container(
                            padding:
                                EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: Image(
                                image: AssetImage("assets/carousel/2.jpeg"))),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "Free Fire Rilis Mode Ranked Bomb Squad: 5v5 dan Map Baru El Pastelo",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Free Fire baru saja menghadirkan mode ranked terbaru di Bomb Squad: 5v5 yang dilengkapi dengan map baru, El Pastelo.\n\n"
                            "Para pemain game besutan Garena ini diajak untuk ikut mencoba mode ranked ini di Bomb Squad: 5v5. "
                            "Selain itu, pemain juga diajak untuk meramaikan event spesial dengan berbagai hadiah menarik yang akan hadir di dalam game Free Fire mulai 10 Juni mendatang.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "src: https://games.grid.id/read/153315738/free-fire-rilis-mode-ranked-bomb-squad-5v5-dan-map-baru-el-pastelo",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ))),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Card(
                    elevation: 6,
                    child: Flexible(
                        child: Column(
                      children: [
                        Container(
                            padding:
                                EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: Image(
                                image: AssetImage("assets/carousel/3.jpg"))),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "Riot Games is bringing Valorant to Mobile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Valorant is undoubtedly one of the most popular modern FPS titles out there. In celebration of the game's first anniversary, Riot has announced that the game is expanding to more platforms, starting with phones and mobile devices and the game will be simply called \"Valorant Mobile.\"\n\n"
                            "Valorant Mobile will be the first step in bringing the game to more players.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Text(
                            "src: https://www.techspot.com/news/89909-riot-games-bringing-valorant-mobile.html",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ))),
              )
            ],
            options: CarouselOptions(
              initialPage: 1,
              height: 550,
              enableInfiniteScroll: false
            ),
          ),
        ),
      ),
    );
  }
}
