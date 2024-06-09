import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String _display = '';
  String _expression = '';
  String _error = '';
  String _lastResult = '';
  bool _isLastActionEquals = false;

  String get display => _display;

  String get result => _expression;

  String get error => _error;

  void buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      _clear();
    } else if (buttonText == 'DEL') {
      _delete();
    } else if (buttonText == '=') {
      _calculate();
    } else if (buttonText == 'ANS') {
      _useAns();
    } else {
      _appendExpression(buttonText);
    }
    notifyListeners();
  }

  void _clear() {
    _display = '';
    _expression = '';
    _error = '';
    _isLastActionEquals = false;
    //_lastResult ='';
  }

  void _delete() {
    if (_expression.isNotEmpty) {
      _expression = _expression.substring(0, _expression.length - 1);
    }
    _display = '';
    _error = '';
  }

  void _calculate() {
    try {
      const evaluator = ExpressionEvaluator();
      final expression = Expression.parse(_expression.replaceAll('X', '*'));
      final result = evaluator.eval(expression, {});
      _display = result.toString();
      //_expression = _display;
      _lastResult = _display;
      _isLastActionEquals = true;
    } catch (e) {
      _error = 'Mathematical Error';
      _display = '';
      _expression = '';
    }
  }

  void _appendExpression(String value) {
    if (_isLastActionEquals) {
      _expression = _lastResult;
      _display = '';
      _isLastActionEquals = false;
    }
    if (_display == '0' && value != '.') {
      _expression = value;
    } else {
      _expression += value;
    }
    //_display = _expression;
  }

  void _useAns() {
    if (_lastResult.isNotEmpty) {
      _expression += _lastResult;
    }
  }
}
