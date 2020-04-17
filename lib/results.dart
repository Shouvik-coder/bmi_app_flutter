import 'package:flutter/material.dart';
import 'package:flutterapp/custom_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class Results extends StatelessWidget {

  Results({this.comment,this.bmi,this.result});
  final String bmi,result,comment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Expanded(child: Container(alignment:Alignment.center,child: Text('Your Result',style: resultTextStyle,textAlign: TextAlign.center,))),
        Expanded(
          flex: 5,
          child: CustomCard(
            colour: inactiveColor,
            cardChild: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Text(result,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green),),
              Text(bmi,style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold),),
                Text(comment,style: TextStyle(fontSize: 24),),
            ],),
          ),
        ),
          Expanded(
            child:
          BottomButton(title:"RE-CALCULATE",onTap:(){
            Navigator.pop(context);
          } ,),),
      ],

      )
    );
  }
}
