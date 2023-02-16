import 'package:flutter/material.dart';
import 'package:hong/helpers/utils.dart';
import 'package:hong/models/subcategory.dart';
import 'package:hong/pages/detailspage.dart';
import 'package:hong/pages/selectedcategorypage.dart';
import 'package:hong/pages/splashpage.dart';
import 'package:hong/pages/welcomepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(
        duration: 1,
        goToPage: WelcomePage(),
      ),
    ),
  );
}
