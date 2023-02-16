import 'package:flutter/material.dart';
import 'package:hong/helpers/appcolors.dart';
import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/widgets/iconfont.dart';

class SplashPage extends StatefulWidget {
  int duration;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: this.widget.duration), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => this.widget.goToPage));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: IconfontHelper.apple,
          size: 100,
        ),
      ),
    );
  }
}
