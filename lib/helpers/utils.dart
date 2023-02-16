import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/models/subcategory.dart';

import '../models/category.dart';
import '../models/categorypart.dart';
import 'appcolors.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        name: "Buildings",
        imgName: "japan1",
        icon: IconfontHelper.leaf,
        subCategories: [
          SubCategory(
        color: AppColors.MEATS,
        name: "Buildings",
        imgName: "japan1",
        icon: IconfontHelper.leaf
        parts: [
          CategoryPart(
            name: 'Buildings',
            imgName: 'japan1',
            isSelected: false
          ),
          CategoryPart(
            name: 'River',
            imgName: 'japan2',
            isSelected: false
          ),
          CategoryPart(
            name: 'Muscle man',
            imgName: 'japan4',
            isSelected: false
          ),
          CategoryPart(
            name: 'Totoro',
            imgName: 'japan5',
            isSelected: false
          ),
          CategoryPart(
            name: 'Fukuoka',
            imgName: 'japan6',
            isSelected: false
          ),
        ]
          ),
          SubCategory(
        color: AppColors.FRUITS,
        name: "River",
        imgName: "japan2",
        icon: IconfontHelper.apple, parts: []
          ),
          SubCategory(
        color: AppColors.VEGS,
        name: "Muscle man",
        imgName: "japan4",
        icon: IconfontHelper.attach, parts: []
          ),
          SubCategory(
        color: AppColors.SEEDS,
        name: "Totoro",
        imgName: "japan5",
        icon: IconfontHelper.plug, parts: []
          ),
          SubCategory(
        color: AppColors.PASTRIES,
        name: "Fukuoka",
        imgName: "japan6",
        icon: IconfontHelper.plane, parts: []
          )
        ]
      ),
      Category(
        color: AppColors.FRUITS,
        name: "River",
        imgName: "japan2",
        icon: IconfontHelper.apple,
        subCategories: []
      ),
      Category(
        color: AppColors.VEGS,
        name: "Muscle man",
        imgName: "japan4",
        icon: IconfontHelper.attach,
        subCategories: []
      ),
      Category(
        color: AppColors.SEEDS,
        name: "Totoro",
        imgName: "japan5",
        icon: IconfontHelper.plug,
        subCategories: []
      ),
      Category(
        color: AppColors.PASTRIES,
        name: "Fukuoka",
        imgName: "japan6",
        icon: IconfontHelper.plane,
        subCategories: []
      )
    ];
  }
}