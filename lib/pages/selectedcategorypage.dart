import 'package:flutter/material.dart';
import 'package:hong/helpers/appcolors.dart';
import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/models/category.dart';
import 'package:hong/pages/detailspage.dart';
import 'package:hong/widgets/categoryicon.dart';
import 'package:hong/widgets/iconfont.dart';
import 'package:hong/widgets/mainappbar.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;
  SelectedCategoryPage({required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(),
        body: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                    color: selectedCategory.color,
                    iconName: selectedCategory.icon),
                SizedBox(width: 10),
                Text(selectedCategory.name,
                    style:
                        TextStyle(color: selectedCategory.color, fontSize: 20))
              ],
            ),
            SizedBox(height: 30),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                        selectedCategory.subCategories!.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  DetailsPage(
                                    subCategory: selectedCategory.subCategories![index]
                                   )
                                  )
                                );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                    'assets/imgs/' +
                                        selectedCategory
                                            .subCategories![index].imgName +
                                        '.jpg',
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100),
                              ),
                              SizedBox(height: 10),
                              Text(
                                  this
                                      .selectedCategory
                                      .subCategories![index]
                                      .name,
                                  style: TextStyle(
                                      color: this.selectedCategory.color))
                            ],
                          ),
                        ),
                      );
                    })))
          ],
        )));
  }
}

//   DetailsPage({required Category subCategory}) {}
