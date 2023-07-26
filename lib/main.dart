import 'package:flutter/material.dart';
import 'package:job_finder_app/common/style.dart';
import 'package:job_finder_app/ui/home_page.dart';
import 'package:job_finder_app/ui/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Finder',
        theme: getThemeData(),
        initialRoute: LandingPage.routeName,
        routes: {
          LandingPage.routeName: (context) => const LandingPage(),
          HomePage.routeName: (context) => const HomePage(),
        });
  }
}
