import 'package:flutter/material.dart';
import 'package:login_screen/Screens/FacebookLogin.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/Home': (context) => const HomeScreen(),
        '/FBLogin': (context) => FBLogin(),
      },
      debugShowCheckedModeBanner:false);
  }
}
