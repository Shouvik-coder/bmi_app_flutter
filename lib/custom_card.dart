import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget{

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  CustomCard({this.colour,this.cardChild,this.onPress});
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onPress,
      child: Container
        (

        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child:cardChild,

      ),
    );
  }
}