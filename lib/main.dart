import 'package:flutter/material.dart';
import 'package:pechal/screens/chat_screen.dart';
import 'package:pechal/screens/login_screen.dart';
import 'package:pechal/screens/registration_screen.dart';

import 'package:pechal/screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.go,
      routes: {
        WelcomeScreen.go: (context) => WelcomeScreen(),
        LoginScreen.go: (context) => LoginScreen(),
        RegistrationScreen.go: (context) => RegistrationScreen(),
        ChatScreen.go: (context) => ChatScreen(),
      },
    );
  }
}