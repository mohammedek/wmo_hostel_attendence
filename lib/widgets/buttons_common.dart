import 'dart:ffi';

import 'package:flutter/material.dart';



class DupButtons extends StatelessWidget {
  final VoidCallback? onPress;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttonWidth;
  final double buttonHeight;
  // final double buttonWidth;
  // final double buttonHeight;
  // final BorderRadius button_border;
  // final Widget child;

  const DupButtons({
    super.key,
    this.onPress,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonColor,
    required this.buttonWidth,
    required this.buttonHeight,
    // required this.buttonWidth,
    // required this.buttonHeight
  });

// class DupButtons extends StatelessWidget {
//   final String name ;
//   final VoidCallback ? onPress;
//   final Color color;
//    DupButtons(  {
//     super.key,
//       required this.name, required this.onPress, required this.color, });

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: buttonHeight,
        width: buttonWidth ,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
          onPressed: onPress,
            child: Center(
                child: Text(buttonText,style: TextStyle(
                    fontSize:30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),)),
                  ),
    );
  }
}
