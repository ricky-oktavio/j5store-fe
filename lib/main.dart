import 'package:flutter/material.dart';
import 'package:j5store/pages/auth/sign_in_page.dart';
import 'package:j5store/pages/auth/sign_up_page.dart';
import 'package:j5store/pages/home/chat/detail_chat.dart';
import 'package:j5store/pages/home/main_page.dart';
import 'package:j5store/pages/splash/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChat()
      },
    );
  }
}
