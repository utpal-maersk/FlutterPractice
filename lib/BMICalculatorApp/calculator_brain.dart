import 'dart:math';
class CalculatorBrain{
  late final int height;
  late final int weight;
  double _bmi=0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI(){
     _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResult(){
    if (_bmi >=25){
      return 'Overweight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'Under weight';
    }
  }

  String getInterpretation(){
    if (_bmi >=25){
      return 'You have a higher than normal body weight.Try to exercise and eat less Fatty food';
    }else if(_bmi>18.5){
      return 'You have Normal Body ,Good Job';
    }else{
      return 'You are Under weight,Try to eat more ';
    }
  }
}