import 'dart:math';

class CalculatorBrain {
  // Uses cm
  int height;
  // Uses kg
  int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    this._bmi = this.weight / pow(this.height / 100.0, 2);
    return this._bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi >= 25) {
      return 'Overweight';
    }

    if (this._bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String getInterpretation() {
    if (this._bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }

    if (this._bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    }

    return 'You have a lower than normal body weight. You could eat a bit more.';
  }
}
