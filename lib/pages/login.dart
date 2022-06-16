import 'package:flutter/material.dart';
import 'package:octashop/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var ctrlUsername = TextEditingController();
  var ctrlPassword = TextEditingController();
  var ctx;
  bool valid = false;

  void errorMsg(String error) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
  }

  void validations() {
    if (ctrlUsername.text == "") {
      errorMsg("Username field must be filled!");
    } else if (ctrlUsername.text.length <= 6) {
      errorMsg("Username length must be more than 6 words!");
    } else if (ctrlPassword.text == "") {
      errorMsg("Password field must be filled!");
    } else if (ctrlPassword.text.length < 4 || ctrlPassword.text.length > 16) {
      errorMsg("Password length must be between 4 and 16 words!");
    } else {
      Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (ctx) => HomePage(
            username: ctrlUsername.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Image(
                width: 200,
                height: 200,
                image: AssetImage("assets/Octashop Logo.png")),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              controller: ctrlUsername,
              decoration: InputDecoration(
                labelText: "Username",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.person, color: Colors.deepPurple[400]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              controller: ctrlPassword,
              decoration: InputDecoration(
                labelText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.lock, color: Colors.deepPurple[400]),
              ),
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
            ),
          ),
          ElevatedButton(
            onPressed: validations,
            child: Text("LOGIN"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              fixedSize: Size(120, 40),
            ),
          ),
        ]),
      ),
    );
  }
}
