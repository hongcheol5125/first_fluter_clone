import 'package:flutter/material.dart';

class IconFont extends StatelessWidget{
  Color color;
  double size;
  String iconName;

  IconFont({super.key, required this.color, required this.size, required this.iconName});
  
  @override
  Widget build(BuildContext context){
    return Text(this.iconName,
      style: TextStyle(
        color: this.color,
        fontSize: this.size,
        fontFamily: 'untitled-font-1'
      )
    );
  }
}