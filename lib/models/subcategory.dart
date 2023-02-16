import 'dart:ui';

import 'package:hong/models/categorypart.dart';

import 'category.dart';

class SubCategory extends Category {

  List<CategoryPart> parts;
SubCategory({
  required this.parts,
  super.name,
  super.icon,
  super.color,
  super.imgName
});
}