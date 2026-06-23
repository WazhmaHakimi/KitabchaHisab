import 'package:flutter/material.dart';
import 'package:kitabcha_hisab/screens/main_screen.dart';
import 'package:kitabcha_hisab/utils/constants.dart';

void main() {
  runApp(const KitabchaHisab());
}

class KitabchaHisab extends StatelessWidget {
  const KitabchaHisab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitabcha Hisab',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,

        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),

        appBarTheme: const AppBarTheme(
          backgroundColor: kWhiteColor,
          elevation: 0,
          centerTitle: true,
        ),
      ),

      home: const MainScreen(),
    );
  }
}
