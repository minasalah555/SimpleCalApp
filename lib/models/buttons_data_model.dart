import 'package:flutter/material.dart';

class ButtonsDataModel {
  final String? text;
  final Color colorText;
  final Color colorForButton;
  final double width;
  final double height;

  const ButtonsDataModel({
    this.text,
    required this.colorText,
    required this.colorForButton,
    required this.width,
    required this.height,
  });
}

class FinalModel extends ChangeNotifier {
  String calText;
  double result;
  FinalModel({required this.calText, required this.result});

  factory FinalModel.model() {
    return FinalModel(calText: '0', result: 0);
  }
  bool flage = false;
  double value1 = 0;
  String operator = '';
  String tempValue2 = '';
  void Add(String value) {
    if (calText == '0' &&
        (value == '+' || value == '-' || value == '/' || value == '*')) {
      calText = '0';
    } else {
      if (calText == '0') {
        calText = value;
      } else {
        calText += value;
      }
      if (flage == true &&
          value != '+' &&
          value != '-' &&
          value != '/' &&
          value != '*') {
        tempValue2 += value;
        if (operator == '+') {
          result = value1 + double.parse(tempValue2);
        } else if (operator == '-') {
          result = value1 - double.parse(tempValue2);
        } else if (operator == '*') {
          result = value1 * double.parse(tempValue2);
        } else {
          result = value1 / double.parse(tempValue2);
        }
      }
      if (value == '+' || value == '-' || value == '/' || value == '*') {
        if (operator == '') {
          operator = value;
          value1 = double.parse(calText.substring(0, calText.length - 1));
          flage = true;
        } else {
          operator = value;
          value1 = result;
          tempValue2 = '';
        }
      }
    }
    String formatted = result.toStringAsFixed(2);
    result = double.parse(formatted);
    notifyListeners();
  }

  void deleteOneElement() {
    if (tempValue2.length > 0) {
      tempValue2 = tempValue2.substring(0, tempValue2.length - 1);
      if (operator == '+' && tempValue2.length > 0) {
        result = value1 + double.parse(tempValue2);
      } else if (operator == '-' && tempValue2.length > 0) {
        result = value1 - double.parse(tempValue2);
      } else if (operator == '*' && tempValue2.length > 0) {
        result = value1 * double.parse(tempValue2);
      } else if (operator == '/' && tempValue2.length > 0) {
        result = value1 / double.parse(tempValue2);
      } else {
        result = value1;
      }
    }
    if (calText.length > 1) {
      calText = calText.substring(0, calText.length - 1);
    } else {
      calText = '0';
    }
    String formatted = result.toStringAsFixed(2);
    result = double.parse(formatted);
    notifyListeners(); //
  }

  void AC() {
    calText = '0';
    result = 0;
    value1 = 0;
    tempValue2 = '';
    operator = '';
    flage = false;

    notifyListeners(); //
  }

  void equal() {
    calText = '0';
    value1 = 0;
    tempValue2 = '';
    operator = '';
    flage = false;
    notifyListeners(); //
  }
}
