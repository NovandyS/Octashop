import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';

class DetailVoucherPage extends StatefulWidget {
  final String username;
  final String name;
  final String currency;
  final String price;

  DetailVoucherPage(
      {Key? key,
      required this.username,
      required this.name,
      required this.currency,
      required this.price})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DetailVoucherPageState();
  }
}

class DetailVoucherPageState extends State<DetailVoucherPage> {
  String gameImage = "";
  var ctrlPlayerID = TextEditingController();
  RegExp _re = RegExp(r'^[0-9]+$');

  void validate() {
    if (ctrlPlayerID.text == "") {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text("Alert"),
                content: Text("Player ID must be filled!"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'CLOSE'),
                      child: Text("CLOSE"))
                ],
              ));
    } else if (!_re.hasMatch(ctrlPlayerID.text)) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text("Alert"),
                content: Text("Player ID must be numeric!"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'CLOSE'),
                      child: Text("CLOSE"))
                ],
              ));
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text("Success"),
                content: Text("Your purchase is being processed!"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage(username: widget.username))),
                      child: Text("CLOSE"))
                ],
              ));
    }
  }

  String img(String name) {
    if (name.compareTo("Mobile Legends") == 0) {
      gameImage = "assets/icons/mobile-legend.png";
    } else if (name.compareTo("Free Fire") == 0) {
      gameImage = "assets/icons/free-fire-black.png";
    } else if (name.compareTo("Ragnarok X") == 0) {
      gameImage = "assets/icons/ragnarok-x.png";
    } else if (name.compareTo("Valorant") == 0) {
      gameImage = "assets/icons/valorant-color.png";
    } else if (name.compareTo("Genshin Impact") == 0) {
      gameImage = "assets/icons/genshin-impact-black.png";
    }
    return gameImage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => {Navigator.pop(context)}),
          title: Text("Details"),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Image(width: 325, image: AssetImage(img(widget.name))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 32, right: 32),
                    child: Text(widget.name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w900)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32, top: 32, right: 32),
                    child: Text(widget.currency),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32, top: 16, right: 32),
                    child: Text(widget.price),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 32, top: 16, right: 32),
                      child: Row(
                        children: [
                          Container(
                            child: Text("Player ID: "),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(left: 8),
                            child: TextField(
                              controller: ctrlPlayerID,
                              decoration: InputDecoration(
                                hintText: "12345678",
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple)),
                              ),
                            ),
                          )
                        ],
                      ))
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 32),
                  child: ElevatedButton(
                    onPressed: validate, 
                    child: Text("Purchase"),
                      style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      fixedSize: Size(150, 40),
                    ),
                  ))
            ],
          ),
        ));
  }
}
