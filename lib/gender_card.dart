import 'package:flutter/material.dart';
import 'constants.dart';


class GenderCard extends StatelessWidget
{
  GenderCard({ this.icon, this.gender});

  final  IconData icon;
  final String gender;

  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[

        Icon(icon,size: 70.0,),
        SizedBox(height: 15.0,),
        Text(gender,style: labelTextStyle,)

      ],);

  }
}