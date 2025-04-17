import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:flutter/material.dart';

class TextWidet extends StatelessWidget {
  const TextWidet({super.key, required this.buttonsDataModel});

  final ButtonsDataModel buttonsDataModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // textAlign: TextAlign.center,
        buttonsDataModel.text ?? '',
        style: TextStyle(
          color: buttonsDataModel.colorText,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
