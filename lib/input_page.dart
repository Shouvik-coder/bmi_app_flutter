import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/bmi_calculator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_card.dart';
import 'gender_card.dart';
import 'constants.dart';
import 'results.dart';
import 'bottom_button.dart';

enum GenderNo{
  Male,Female
}



class InputPage extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {

GenderNo selectedGender;

int height=170;
int weight=60;
int age=18;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.directions_walk,size: 40,),

          title: Text('BMI CALCULATOR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        body: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
             child: Row(
               children: <Widget>[
                 Expanded(child:
                 CustomCard(onPress:(){
                   setState(() {
                     selectedGender=GenderNo.Male;
                   });
                 },colour: selectedGender==GenderNo.Male?activeColor:inactiveColor,
                 cardChild: GenderCard(gender: 'MALE',
                 icon: FontAwesomeIcons.mars,))),
                 Expanded(child:
                 CustomCard(
                   onPress: (){
                     setState(() {
                       selectedGender=GenderNo.Female;
                     });
                   },
                   colour: selectedGender==GenderNo.Female?activeColor:inactiveColor,
                 cardChild: GenderCard(gender: 'FEMALE',
                   icon: FontAwesomeIcons.venus,),)),
               ],
             ),
            ),
            Expanded(
              child:
              CustomCard(colour: inactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('HEIGHT',style: labelTextStyle,),

                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(height.toString(),style: numberTextStyle,),
                    Text('cm',style: labelTextStyle,),
                  ],
                ),
                  SliderTheme(
                    data:SliderTheme.of(context).copyWith(
                      thumbColor: Colors.red,
                      inactiveTrackColor: Colors.grey[700],
                      activeTrackColor:Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:RoundSliderOverlayShape(overlayRadius: 30.0),


                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 220,
                      onChanged: (double newValue){
                      setState(() {
                        height=newValue.round();
                      });
                      }

                    ),
                  )
              ],),),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child:
                  CustomCard(colour: inactiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT',style: labelTextStyle,),
                    Text(weight.toString(),style: numberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            heroTag: "njvjuvjvjvj",
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.minus),
                          ),
                          SizedBox(width: 10.0,),
                          FloatingActionButton(
                            heroTag: "nvhvhhvhvh",
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.plus),
                          )
                        ],
                      )
                  ],),)),
                  Expanded(child:
                  CustomCard(colour: inactiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE',style: labelTextStyle,),
                      Text(age.toString(),style: numberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            heroTag: "asdadadd",
                             onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.minus),
                          ),
                          SizedBox(width: 10.0,),
                          FloatingActionButton(
                            heroTag: "sdgdfggd",
                              onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            child: Icon(FontAwesomeIcons.plus),
                          )
                        ],
                      )
                    ],),)),


                ],
              ),
            ),
            BottomButton(title:"CALCULATE",onTap:(){
              BmiCalculate calc= BmiCalculate(height: height,weight: weight);

              Navigator.push(context,MaterialPageRoute(builder: (context){
              return Results(
                bmi: calc.calculator(),
                result: calc.resultGetter(),
                comment: calc.commentGetter(),
              );
            }));},),

          ],
        )

    );

  }

}


