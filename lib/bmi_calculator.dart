import 'dart:math';

class BmiCalculate{

  BmiCalculate({this.weight,this.height});
  int height;
  int weight;

  double bmi;

  calculator()
  {
    bmi=weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }

  resultGetter(){
    if(bmi>25)
      return 'OVERWEIGHT';
    else if(bmi>18.5 && bmi <25)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  commentGetter(){
    if(bmi>25)
      return 'Do some exercise';
    else if(bmi>18.5 && bmi <25)
      return 'Perfect.Just enjoy your life';
    else
      return 'You need to eat more';
  }

}