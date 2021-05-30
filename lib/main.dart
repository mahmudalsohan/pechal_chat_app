import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pechal/screens/chat_screen.dart';
import 'package:pechal/screens/login_screen.dart';
import 'package:pechal/screens/registration_screen.dart';
import 'package:pechal/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
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
