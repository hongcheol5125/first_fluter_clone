import 'dart:ui';

import 'package:hong/models/subcategory.dart';

class Category {
  String? name;
  String? icon;
  Color? color;
  String? imgName;
  List<SubCategory>? subCategories;

  Category(
      {this.name, this.icon, this.color, this.imgName, this.subCategories});
}
