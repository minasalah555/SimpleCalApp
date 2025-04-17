import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:flutter/material.dart';

class CalProvider extends ChangeNotifier {
  FinalModel _finalModel = FinalModel.model();

  set finalModel(FinalModel finalModel) {
    _finalModel = finalModel;
    notifyListeners();
  }

  FinalModel get finalModel => _finalModel;
}
