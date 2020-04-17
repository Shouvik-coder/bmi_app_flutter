import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  BottomButton({this.title,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        color: Colors.red[900],
        margin: EdgeInsets.only(top: 15),
        height: bottomButtonHeight,
        child: Text(title,style: bottomButtonStyle,textAlign: TextAlign.center,),



      ),
    );
  }
}
