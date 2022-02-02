import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/calc/calculator.dart';
import 'package:flutter_test_application_1/pages/chats.dart';
import 'package:flutter_test_application_1/pages/demo.dart';
import 'package:flutter_test_application_1/pages/form.dart';
import 'package:flutter_test_application_1/pages/login_page.dart';
import 'package:flutter_test_application_1/pages/next_page.dart';
import 'package:flutter_test_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.rubik().fontFamily,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => const MyCalculator(),
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.demo: (context) => const Demo(),
        "/form": (context) => const FormView(),
        MyRoutes.calc: (context) => const MyCalculator(),
      },
    );
  }
}
