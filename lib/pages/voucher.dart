import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';
import 'package:octashop/pages/login.dart';
import 'package:octashop/pages/news.dart';

class VoucherPage extends StatefulWidget {
  final String username;

  VoucherPage({Key? key, required this.username}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return VoucherPageState();
  }
}

class Games {
  String name;
  String amount;
  String price;

  Games({required this.name, required this.amount, required this.price});
}

class VoucherPageState extends State<VoucherPage>
    with TickerProviderStateMixin {
  var ctx;
  late TabController tabController;

  void logout() {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => LoginPage()));
  }

  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  ButtonStyle buttonStyle = TextButton.styleFrom(
      textStyle: TextStyle(fontWeight: FontWeight.bold),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));

  List<Games> MobileLegends = [
    Games(name: "Mobile Legends", amount: "86 Diamonds", price: "Rp 22.400"),
    Games(name: "Mobile Legends", amount: "172 Diamonds", price: "Rp 48.000"),
    Games(name: "Mobile Legends", amount: "257 Diamonds", price: "Rp 69.000"),
    Games(name: "Mobile Legends", amount: "344 Diamonds", price: "Rp 79.000"),
    Games(name: "Mobile Legends", amount: "429 Diamonds", price: "Rp 110.000"),
  ];

  List<Games> FreeFire = [
    Games(name: "Free Fire", amount: "70 Diamonds", price: "Rp 9.300"),
    Games(name: "Free Fire", amount: "100 Diamonds", price: "Rp 13.500"),
    Games(name: "Free Fire", amount: "140 Diamonds", price: "Rp 18.500"),
    Games(name: "Free Fire", amount: "210 Diamonds", price: "Rp 28.000"),
    Games(name: "Free Fire", amount: "355 Diamonds", price: "Rp 46.000"),
  ];

  List<Games> Valorant = [
    Games(name: "Valorant", amount: "125 Points", price: "Rp 14.500"),
    Games(name: "Valorant", amount: "700 Points", price: "Rp 77.500"),
    Games(name: "Valorant", amount: "1375 Points", price: "Rp 145.000"),
    Games(name: "Valorant", amount: "2400 Points", price: "Rp 242.000"),
    Games(name: "Valorant", amount: "4000 Points", price: "Rp 388.000"),
  ];

  List<Games> RagnarokX = [
    Games(name: "Ragnarok X", amount: "2200 Diamonds", price: "Rp 55.000"),
    Games(name: "Ragnarok X", amount: "4410 Diamonds", price: "Rp 110.000"),
    Games(name: "Ragnarok X", amount: "7370 Diamonds", price: "Rp 183.000"),
    Games(name: "Ragnarok X", amount: "14350 Diamonds", price: "Rp 365.500"),
    Games(name: "Ragnarok X", amount: "47710 Diamonds", price: "Rp 1.070.000"),
  ];

  List<Games> GenshinImpact = [
    Games(name: "Genshin Impact", amount: "330 Primogems", price: "Rp 58.000"),
    Games(name: "Genshin Impact", amount: "990 Primogems", price: "Rp 175.000"),
    Games(
        name: "Genshin Impact", amount: "1980 Primogems", price: "Rp 352.000"),
    Games(
        name: "Genshin Impact", amount: "3280 Primogems", price: "Rp 500.000"),
    Games(
        name: "Genshin Impact", amount: "6480 Primogems", price: "Rp 725.000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voucher"),
        backgroundColor: Colors.deepPurple,
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            icon: Image(image: AssetImage("assets/icons/mobile legend.png")),
          ),
          Tab(
            icon: Image(image: AssetImage("assets/icons/free fire.png")),
          ),
          Tab(
            icon: Image(image: AssetImage("assets/icons/valorant.png")),
          ),
          Tab(
            icon: Image(image: AssetImage("assets/icons/ragnarok x.png")),
          ),
          Tab(
            icon: Image(image: AssetImage("assets/icons/genshin impact.png")),
          )
        ]),
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
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Card(
                    elevation: 6,
                    child: SizedBox(
                        height: 80,
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    "assets/icons/diamond-mole.png")),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 16, left: 16),
                                child: Text("86 Diamonds",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 8, left: 16),
                                child: Text("Rp 22.400"),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            child: ElevatedButton(
                                child: Text("Book"), onPressed: null),
                          )
                        ]))),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 8, right: 16),
                child: Card(
                    elevation: 6,
                    child: SizedBox(
                        height: 80,
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    "assets/icons/diamond-mole.png")),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 16, left: 16),
                                child: Text("172 Diamonds",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 8, left: 16),
                                child: Text("Rp 48.00"),
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            child: ElevatedButton(
                                child: Text("Book"), onPressed: null),
                          )
                        ]))),
              ),
            ],
          )),
          Center(child: null),
          Center(child: null),
          Center(child: null),
          Center(child: null)
        ],
      ),
    );
  }
}
