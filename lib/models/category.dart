import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/models/subcategory.dart';

class Category {
  String name;
  String icon;
  Color color;
  String imgName;
  List<SubCategory>? subCategories;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.imgName,
    this.subCategories,
  });
}

class TestClass {
  Category mockData = Category(
    name: "mockData",
    imgName: "japan1",
    color: Colors.red,
    icon: IconfontHelper.leaf,
  );
  method() {
    mockData.name;
    print(mockData.icon);
  }

  User hong = User(
    age: 1,
    name: "hong",
  );
  User kisan = User(age: 1, name: "kisan");
}

class User {
  int age;
  String name;
  late String gender;
  User({required this.age, required this.name, bool isMan = true}) {
    if (isMan = true) {
      this.gender = "M";
    } else {
      this.gender = "F";
    }
  }
}
