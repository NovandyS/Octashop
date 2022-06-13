import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';
import 'package:octashop/pages/login.dart';
import 'package:octashop/pages/news.dart';

class VoucherPage extends StatefulWidget{
  final String username;

  VoucherPage({Key? key, required this.username}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return VoucherPageState();
  }

}

class VoucherPageState extends State<VoucherPage>{
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
        body: SingleChildScrollView(),
    );
  }
}