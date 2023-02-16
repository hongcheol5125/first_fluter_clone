import 'package:flutter/material.dart';
import 'package:hong/helpers/appcolors.dart';
import 'package:hong/helpers/iconhelper.dart';

import 'iconfont.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{

Color themeColor;
MainAppBar({ this.themeColor = AppColors.MAIN_COLOR});

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

class MainAppBarState extends State<MainAppBar> {

  @override
  Widget build(BuildContext context) {
        return AppBar(
        centerTitle: true,
        title: IconFont(
          iconName: IconfontHelper.apple,
          color: widget.themeColor,
          size : 40
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: widget.themeColor),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('assets/imgs/japan.jpg')
            ),
          )
        ],
      ) 
  }
}