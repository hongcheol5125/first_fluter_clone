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
      theme: ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: DetailsPage(
        subCategory: Utils.getMockedCategories()[0].subCategories![0],
      )
      // SplashPage(duration: 1,goToPage: WelcomePage(),),
    ),
  );
}
