import 'package:flutter/material.dart';
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
        fontFamily: GoogleFonts.laila().fontFamily,
      ),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
