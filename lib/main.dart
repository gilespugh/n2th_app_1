import 'package:flutter/material.dart';
import 'package:n2th_app_1/screens/home_page.dart';
import 'package:n2th_app_1/components/my_constants.dart';

void main() {
  runApp(N2thApp1());
}

class N2thApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kPrincipalColour,
        scaffoldBackgroundColor: kScaffoldColour,
        accentColor: Color(0xFF9E9E9E),
      ),
      home: HomePage(),
    );
  }
}
