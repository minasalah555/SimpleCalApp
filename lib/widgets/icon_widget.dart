import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.buttonsDataModel});

  final ButtonsDataModel buttonsDataModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.backspace, color: buttonsDataModel.colorText),
    );
  }
}
