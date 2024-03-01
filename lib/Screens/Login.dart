import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  Widget textField(String text) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black87,
            ),
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          decoration:
              InputDecoration(label: Text(text), border: InputBorder.none),
        ));
  }

  Widget button(String text, Color color, String nav,BuildContext context) {
    return Container(
        width: 300,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, nav);
            },
            child: Text(text,
                style: TextStyle(color: Colors.white, fontSize: 20))));
  }

  final Widget vspace = const SizedBox(height: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            vspace,
            textField(
              "E-mail address",
            ),
            vspace,
            textField("Password"),
            vspace,
            button("Log In", Colors.red, "/FBLogin",context),
            vspace,
            Text(
              "OR",
              style: TextStyle(fontSize: 15),
            ),
            vspace,
            button("Facebook Login", Colors.blue, "/FBLogin",context),
          ],
        ),
      )),
    );
  }
}
