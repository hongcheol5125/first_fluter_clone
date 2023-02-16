import 'package:flutter/material.dart';
import 'package:hong/models/subcategory.dart';

import '../widgets/mainappbar.dart';

class DetailsPage extends StatefulWidget {
  final SubCategory subCategory;

  DetailsPage({required this.subCategory});

  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/' +
                                  widget.subCategory.imgName! +
                                  '.jpg'),
                              fit: BoxFit.cover)),
                    )
                  ],
                )
              ],
            )));
  }
}
