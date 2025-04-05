import 'package:calco/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/welcome_page.dart';
import 'static/navigation_route.dart';
import 'style/theme/calco_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calco App',
      theme: CalcoTheme.lightTheme,
      darkTheme: CalcoTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: NavigationRoute.welcomeRoute.name,
      routes: {
        NavigationRoute.welcomeRoute.name: (context) => const WelcomePage(),
        NavigationRoute.homeRoute.name: (context) => const HomePage(),
        NavigationRoute.loginRoute.name: (context) => const LoginPage(),
      },
    );
  }
}
