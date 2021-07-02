import 'package:flutter/material.dart';
import 'package:loginservice2/imageadd.dart';
import 'package:loginservice2/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: BackGround(),
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///////////////////////  BackGound //////////////////
        backGroundCreation(),
        /////////////////////////////////   userınformation /////////////////////
        Padding(
          padding: const EdgeInsets.all(20),
          child: Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(143, 147, 251, 0.5),
                      blurRadius: 20,
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      )),
                      child: UserInformation("Email or Phone number")),
                  UserInformation("Password")
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        /////////////////     Login Button ////////////////
        FlatButton(
          onPressed: () {
            print("Buttona basıldı..");
          },
          child: Container(
            height: 50,
            margin: EdgeInsets.only(left: 50, right: 50),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(143, 147, 251, 1),
                  Color.fromRGBO(255, 255, 255, 5),
                  Color.fromRGBO(143, 143, 251, 1),
                ])),
            child: Text("Login"),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        FlatButton(
          onPressed: () {
            print("Path...");
          },
          child: Container(
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Color.fromRGBO(150, 160, 251, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container backGroundCreation() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            width: 80,
            height: 250,
            left: 10,
            child: imageAdd("lamb1.png"),
          ),
          Positioned(
            width: 60,
            height: 180,
            left: 100,
            child: imageAdd("lamb.png"),
          ),
          Positioned(
            width: 80,
            height: 80,
            right: 15,
            top: 50,
            child: imageAdd("clock.png"),
          ),
          Positioned(
            right: 160,
            top: 80,
            child: Container(
              child: Center(
                //NOT: burada Center widget kullanmaz isek ekran Text boyutuna göre boyutlanıyor.
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
