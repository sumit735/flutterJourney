import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/home_page.dart';
import 'package:myfirstapp/pages/login_page.dart';
import 'package:myfirstapp/utils/routes.dart';
import 'package:myfirstapp/widgets/themes.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(), as we have specified / route
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
