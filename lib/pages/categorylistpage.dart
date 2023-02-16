import 'package:flutter/material.dart';
import 'package:hong/helpers/appcolors.dart';
import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/helpers/utils.dart';
import 'package:hong/models/category.dart';
import 'package:hong/pages/selectedcategorypage.dart';
import 'package:hong/widgets/categorybottombar.dart';
import 'package:hong/widgets/categorycard.dart';
import 'package:hong/widgets/iconfont.dart';

class CategoryListPage extends StatelessWidget {

  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: IconFont(
          iconName: IconfontHelper.apple,
          color: AppColors.MAIN_COLOR,
          size : 40
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('assets/imgs/japan.jpg')
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Selecticon una categoria:',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black)
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 100),
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                    category: categories[index],
                    onCardClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectedCategoryPage(
                            selectedCategory:this.categories[index],
                            )
                        )
                      );
                    }
                  );
                },
              ),
            )
          ],
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
          child: CategoryBottomBar(),
        )
          ],
          )
      )
    );
  }
}