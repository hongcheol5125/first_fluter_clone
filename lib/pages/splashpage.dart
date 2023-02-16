import 'package:flutter/material.dart';
import 'package:hong/helpers/appcolors.dart';
import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/widgets/iconfont.dart';

class SplashPage extends StatelessWidget{
  int duration = 0;
  Widget goToPage;

  SplashPage({ required this.goToPage, required this.duration });
  @override
  Widget build(BuildContext context) {
  
    Future.delayed(Duration(seconds: this.duration),(){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    });
   
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
            color: Colors.white,
            iconName: IconfontHelper.apple,
            size: 100
          )
        )
        );
         
  }
}