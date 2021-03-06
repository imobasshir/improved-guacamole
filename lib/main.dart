import 'package:flutter/material.dart';
import 'package:flutter_test_application_1/calc/calculator.dart';
import 'package:flutter_test_application_1/news/api_news.dart';
import 'package:flutter_test_application_1/pages/api/apicall.dart';
import 'package:flutter_test_application_1/pages/api/other_api_call.dart';
import 'package:flutter_test_application_1/pages/api_decode/main_api.dart';
import 'package:flutter_test_application_1/pages/bottom_navabar.dart';
import 'package:flutter_test_application_1/pages/flashcars/main.dart';
import 'package:flutter_test_application_1/pages/new_View.dart';
import 'package:flutter_test_application_1/pages/read.dart';
import 'package:flutter_test_application_1/pages/screenshot_share/main.dart';
import 'package:flutter_test_application_1/pages/slider_crousel.dart';
import 'package:flutter_test_application_1/pages/time_picker.dart';
import 'package:flutter_test_application_1/pages/chats.dart';
import 'package:flutter_test_application_1/pages/demo.dart';
import 'package:flutter_test_application_1/pages/form.dart';
import 'package:flutter_test_application_1/pages/json.dart';
import 'package:flutter_test_application_1/pages/login_page.dart';
import 'package:flutter_test_application_1/pages/next_page.dart';
import 'package:flutter_test_application_1/rest_api/main.dart';
import 'package:flutter_test_application_1/save_data/main.dart';
import 'package:flutter_test_application_1/tic_toc_toe/main.dart';
import 'package:flutter_test_application_1/utils/routes.dart';
import 'package:flutter_test_application_1/weather/weatherapi.dart';
import 'package:flutter_test_application_1/web_view/webvieweg.dart';
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
        "/": (context) => const RestApiCall(),
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.demo: (context) => const Demo(),
        "/form": (context) => const FormView(),
        MyRoutes.chat: (context) => const ChatsView(),
        MyRoutes.calc: (context) => const MyCalculator(),
        "/json": (context) => const LoadJson(),
        "/timePick": (context) => const TimePick(),
        "/news": (context) => const NewsApiCall(),
        "/weather": (context) => const WeatherApi(),
        "/save": (context) => const SaveData(),
        "/demo": (context) => const Demo(),
        "/rest": (context) => const RestApiCall(),
      },
    );
  }
}
