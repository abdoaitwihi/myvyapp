import 'package:flutter/material.dart';
import 'package:myvy/screens/auth/password_reseted_screen.dart';
import 'package:myvy/screens/auth/email_send_screen.dart';
import 'package:myvy/screens/auth/forgot_password_screen.dart';
import 'package:myvy/screens/auth/login_screen.dart';
import 'package:myvy/screens/auth/signup_screen.dart';
import 'package:myvy/screens/first_screen.dart';
import 'package:myvy/screens/home_screen.dart';
import 'package:myvy/screens/specialist_screen.dart';
import 'package:myvy/screens/search_screen.dart';
import 'package:myvy/screens/salon_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/salon',
      routes: {
        '/home': (context) => HomeScreen(),
        '/salon': (context) => SalonScreen(),
        '/speacialist-screen': (context) => SpecialistScreen(),
        '/': (context) => FirstScreen(),
        '/search': (context) => SearchScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgotPassword': (context) => ForgotPasswordScreen(),
        '/emailSent': (context) => EmailSendScreen(),
        '/passwordReseted': (context) => PasswordResetedScreen(),
      },
    );
  }
}
