import 'package:flutter/material.dart';
import 'package:testprojectbc/page/authenticator.dart';
import 'package:testprojectbc/page/confirm.dart';
import 'package:testprojectbc/page/login.dart';
import 'package:testprojectbc/page/loginsuccess.dart';
import 'package:testprojectbc/page/register.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.grey
      ),
      title: 'Flutter Demo',
      home: LoginPage(),
      routes: {
        "/register-page": (context) => RegisterPage(),
        "/confirm-page": (context) => ConfirmPage(),
        "/authenticator-page": (context) => AuthenticatorPage(),
        "/loginsuccess-page": (context) => LoginSuccessPage()


      },

    );
  }
}

