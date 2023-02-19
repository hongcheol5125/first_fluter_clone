import 'package:flutter/material.dart';
import 'package:hong/helpers/appcolors.dart';
import 'package:hong/helpers/iconhelper.dart';
import 'package:hong/pages/categorylistpage.dart';
import 'package:hong/widgets/iconfont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                          'assets/imgs/japan.jpg',
                           fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 180,
                            height: 180,
                            color: AppColors.MAIN_COLOR,
                            alignment: Alignment.center,
                            child: IconFont(
                                iconName: IconfontHelper.plug,
                                color: Colors.white,
                                size: 130
                                ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text('hong market',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                              )
                            ),
                      SizedBox(height: 40),
                      Text('Productos Frescos.\nSaludables. A Tiempo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                             fontSize: 18
                            )
                          ),
                      SizedBox(height: 20),
                      Container(
                        color: AppColors.MAIN_COLOR,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Tratar Ahora!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)
                                    )
                                  ),
                        ),
                      ),
                      SizedBox(height: 10),
                      
                    ],
                  ),
                )
              ],
            )
          )
        );
  }
}
