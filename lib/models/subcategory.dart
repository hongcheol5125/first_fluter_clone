import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hong/models/categorypart.dart';

import 'category.dart';

class SubCategory extends Category {
  List<CategoryPart> parts;
  SubCategory(
      {required this.parts,
      super.name = "null",
      super.icon = "null",
      super.color = Colors.red,
      super.imgName = "null"});
}
