import 'package:calcalutre_for_mina_app/models/buttons_data_model.dart';
import 'package:calcalutre_for_mina_app/widgets/icon_widget.dart';
import 'package:calcalutre_for_mina_app/widgets/text_widet.dart';
import 'package:flutter/material.dart';

class TextOrIcons extends StatelessWidget {
  const TextOrIcons({super.key, required this.buttonsDataModel});

  final ButtonsDataModel buttonsDataModel;

  @override
  Widget build(BuildContext context) {
    if (buttonsDataModel.text == null) {
      return IconWidget(buttonsDataModel: buttonsDataModel);
    } else {
      return TextWidet(buttonsDataModel: buttonsDataModel);
    }
  }
}
