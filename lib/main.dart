import 'package:dogstargram/pages/login_page_widget.dart';
import 'package:dogstargram/pages/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPageWidget(),
    );
  }
}
