
import 'dart:math';

class Calculator_brain{

  final int? height;
  final int? weight;

  Calculator_brain({this.weight, this.height});

  double _bmi = 0;

  String calculateBMI(){
    _bmi = (weight! / pow(height!/100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi<18.5){
      return 'Under weight';
    }else if(_bmi>=18.5 && _bmi<=24.9){
      return 'Normal';
    }if(_bmi>=25.0 && _bmi<=29.9){
      return 'Over weight';
    }else{
      return 'Obese';
    }
  }

  String getInterpretation(){
    if(_bmi<=18.5){
      return 'You have a lower than a normal body weight. You can eat a bit more.';
    }else if(_bmi>=18.5 && _bmi<=24.9){
      return 'You have a normal body weight. Good job!.';
    }else if(_bmi>=25.0 && _bmi<=29.9){
      return 'You have a higher than a normal body weight. Try to exercise more.';
    }else{
      return 'You are extremely over weight. Hurry up! before it\'s too late';
    }
  }
}
